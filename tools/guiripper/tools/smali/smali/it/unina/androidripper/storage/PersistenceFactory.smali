.class public Lit/unina/androidripper/storage/PersistenceFactory;
.super Ljava/lang/Object;
.source "PersistenceFactory.java"


# static fields
.field static stateSavers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lit/unina/androidripper/model/SaveStateListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private scheduler:Lit/unina/androidripper/planning/TraceDispatcher;

.field private theSession:Lcom/nofatclips/androidtesting/model/Session;

.field private theStrategy:Lit/unina/androidripper/model/Strategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lit/unina/androidripper/storage/PersistenceFactory;->stateSavers:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/nofatclips/androidtesting/model/Session;)V
    .locals 0
    .parameter "theSession"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p0, p1}, Lit/unina/androidripper/storage/PersistenceFactory;->setTheSession(Lcom/nofatclips/androidtesting/model/Session;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/nofatclips/androidtesting/model/Session;Lit/unina/androidripper/planning/TraceDispatcher;)V
    .locals 0
    .parameter "theSession"
    .parameter "scheduler"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lit/unina/androidripper/storage/PersistenceFactory;-><init>(Lcom/nofatclips/androidtesting/model/Session;)V

    .line 37
    invoke-virtual {p0, p2}, Lit/unina/androidripper/storage/PersistenceFactory;->setDispatcher(Lit/unina/androidripper/planning/TraceDispatcher;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/nofatclips/androidtesting/model/Session;Lit/unina/androidripper/planning/TraceDispatcher;Lit/unina/androidripper/model/Strategy;)V
    .locals 0
    .parameter "theSession"
    .parameter "scheduler"
    .parameter "theStrategy"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lit/unina/androidripper/storage/PersistenceFactory;-><init>(Lcom/nofatclips/androidtesting/model/Session;Lit/unina/androidripper/planning/TraceDispatcher;)V

    .line 42
    invoke-virtual {p0, p3}, Lit/unina/androidripper/storage/PersistenceFactory;->setStrategy(Lit/unina/androidripper/model/Strategy;)V

    .line 43
    return-void
.end method

.method public static registerForSavingState(Lit/unina/androidripper/model/SaveStateListener;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 115
    sget-object v0, Lit/unina/androidripper/storage/PersistenceFactory;->stateSavers:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    return-void
.end method


# virtual methods
.method public getDispatcher()Lit/unina/androidripper/planning/TraceDispatcher;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lit/unina/androidripper/storage/PersistenceFactory;->scheduler:Lit/unina/androidripper/planning/TraceDispatcher;

    return-object v0
.end method

.method public getPersistence()Lit/unina/androidripper/model/Persistence;
    .locals 7

    .prologue
    .line 47
    invoke-virtual {p0}, Lit/unina/androidripper/storage/PersistenceFactory;->resumingPersistence()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 48
    const-string v4, "androidripper"

    const-string v5, "Generated Resuming Persistence"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance v1, Lit/unina/androidripper/storage/ResumingPersistence;

    invoke-direct {v1}, Lit/unina/androidripper/storage/ResumingPersistence;-><init>()V

    .line 50
    .local v1, resumer:Lit/unina/androidripper/storage/ResumingPersistence;
    move-object v3, v1

    .line 52
    .local v3, thePersistence:Lit/unina/androidripper/model/Persistence;
    invoke-virtual {p0}, Lit/unina/androidripper/storage/PersistenceFactory;->getDispatcher()Lit/unina/androidripper/planning/TraceDispatcher;

    move-result-object v4

    invoke-virtual {v4}, Lit/unina/androidripper/planning/TraceDispatcher;->getScheduler()Lit/unina/androidripper/model/TaskScheduler;

    move-result-object v4

    invoke-interface {v4}, Lit/unina/androidripper/model/TaskScheduler;->getTaskList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Lit/unina/androidripper/storage/ResumingPersistence;->setTaskList(Ljava/util/List;)V

    .line 53
    sget-object v4, Lit/unina/androidripper/storage/Resources;->TASK_LIST_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lit/unina/androidripper/storage/ResumingPersistence;->setTaskListFile(Ljava/lang/String;)V

    .line 54
    sget-object v4, Lit/unina/androidripper/storage/Resources;->ACTIVITY_LIST_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lit/unina/androidripper/storage/ResumingPersistence;->setActivityFile(Ljava/lang/String;)V

    .line 55
    sget-object v4, Lit/unina/androidripper/storage/Resources;->PARAMETERS_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lit/unina/androidripper/storage/ResumingPersistence;->setParametersFile(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lit/unina/androidripper/storage/PersistenceFactory;->getStrategy()Lit/unina/androidripper/model/Strategy;

    move-result-object v4

    invoke-interface {v4, v1}, Lit/unina/androidripper/model/Strategy;->registerTerminationListener(Lit/unina/androidripper/model/TerminationListener;)V

    .line 58
    sget-object v4, Lit/unina/androidripper/storage/PersistenceFactory;->stateSavers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lit/unina/androidripper/model/SaveStateListener;

    .line 59
    .local v2, saver:Lit/unina/androidripper/model/SaveStateListener;
    invoke-virtual {v1, v2}, Lit/unina/androidripper/storage/ResumingPersistence;->registerListener(Lit/unina/androidripper/model/SaveStateListener;)V

    goto :goto_0

    .line 62
    .end local v2           #saver:Lit/unina/androidripper/model/SaveStateListener;
    :cond_0
    invoke-virtual {p0}, Lit/unina/androidripper/storage/PersistenceFactory;->getDispatcher()Lit/unina/androidripper/planning/TraceDispatcher;

    move-result-object v4

    invoke-virtual {v4, v1}, Lit/unina/androidripper/planning/TraceDispatcher;->registerListener(Lit/unina/androidripper/model/DispatchListener;)V

    .line 63
    invoke-virtual {p0}, Lit/unina/androidripper/storage/PersistenceFactory;->getStrategy()Lit/unina/androidripper/model/Strategy;

    move-result-object v4

    instance-of v4, v4, Lit/unina/androidripper/strategy/SimpleStrategy;

    if-eqz v4, :cond_1

    .line 64
    invoke-virtual {p0}, Lit/unina/androidripper/storage/PersistenceFactory;->getStrategy()Lit/unina/androidripper/model/Strategy;

    move-result-object v4

    check-cast v4, Lit/unina/androidripper/strategy/SimpleStrategy;

    invoke-virtual {v4, v1}, Lit/unina/androidripper/strategy/SimpleStrategy;->registerStateListener(Lit/unina/androidripper/model/StateDiscoveryListener;)V

    .line 74
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #resumer:Lit/unina/androidripper/storage/ResumingPersistence;
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lit/unina/androidripper/storage/PersistenceFactory;->getTheSession()Lcom/nofatclips/androidtesting/model/Session;

    move-result-object v4

    invoke-interface {v3, v4}, Lit/unina/androidripper/model/Persistence;->setSession(Lcom/nofatclips/androidtesting/model/Session;)V

    .line 75
    instance-of v4, v3, Lit/unina/androidripper/model/ImageStorage;

    if-eqz v4, :cond_2

    move-object v4, v3

    .line 76
    check-cast v4, Lit/unina/androidripper/model/ImageStorage;

    invoke-static {v4}, Lit/unina/androidripper/automation/ScreenshotFactory;->setTheImageStorage(Lit/unina/androidripper/model/ImageStorage;)V

    .line 79
    :cond_2
    return-object v3

    .line 66
    .end local v3           #thePersistence:Lit/unina/androidripper/model/Persistence;
    :cond_3
    invoke-virtual {p0}, Lit/unina/androidripper/storage/PersistenceFactory;->stepPersistence()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 67
    const-string v4, "androidripper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Generated Step Persistence with step = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lit/unina/androidripper/storage/Resources;->MAX_TRACES_IN_RAM:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v3, Lit/unina/androidripper/storage/StepDiskPersistence;

    sget v4, Lit/unina/androidripper/storage/Resources;->MAX_TRACES_IN_RAM:I

    invoke-direct {v3, v4}, Lit/unina/androidripper/storage/StepDiskPersistence;-><init>(I)V

    .restart local v3       #thePersistence:Lit/unina/androidripper/model/Persistence;
    goto :goto_1

    .line 70
    .end local v3           #thePersistence:Lit/unina/androidripper/model/Persistence;
    :cond_4
    const-string v4, "androidripper"

    const-string v5, "Generated Default Persistence"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v3, Lit/unina/androidripper/storage/DiskPersistence;

    invoke-direct {v3}, Lit/unina/androidripper/storage/DiskPersistence;-><init>()V

    .restart local v3       #thePersistence:Lit/unina/androidripper/model/Persistence;
    goto :goto_1
.end method

.method public getStrategy()Lit/unina/androidripper/model/Strategy;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lit/unina/androidripper/storage/PersistenceFactory;->theStrategy:Lit/unina/androidripper/model/Strategy;

    return-object v0
.end method

.method public getTheSession()Lcom/nofatclips/androidtesting/model/Session;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lit/unina/androidripper/storage/PersistenceFactory;->theSession:Lcom/nofatclips/androidtesting/model/Session;

    return-object v0
.end method

.method public resumingPersistence()Z
    .locals 1

    .prologue
    .line 87
    sget-boolean v0, Lit/unina/androidripper/Resources;->ENABLE_RESUME:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lit/unina/androidripper/Resources;->ACTIVITY_DESCRIPTION_IN_SESSION:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDispatcher(Lit/unina/androidripper/planning/TraceDispatcher;)V
    .locals 0
    .parameter "scheduler"

    .prologue
    .line 103
    iput-object p1, p0, Lit/unina/androidripper/storage/PersistenceFactory;->scheduler:Lit/unina/androidripper/planning/TraceDispatcher;

    .line 104
    return-void
.end method

.method public setStrategy(Lit/unina/androidripper/model/Strategy;)V
    .locals 0
    .parameter "theStrategy"

    .prologue
    .line 111
    iput-object p1, p0, Lit/unina/androidripper/storage/PersistenceFactory;->theStrategy:Lit/unina/androidripper/model/Strategy;

    .line 112
    return-void
.end method

.method public setTheSession(Lcom/nofatclips/androidtesting/model/Session;)V
    .locals 0
    .parameter "theSession"

    .prologue
    .line 95
    iput-object p1, p0, Lit/unina/androidripper/storage/PersistenceFactory;->theSession:Lcom/nofatclips/androidtesting/model/Session;

    .line 96
    return-void
.end method

.method public stepPersistence()Z
    .locals 1

    .prologue
    .line 83
    sget v0, Lit/unina/androidripper/storage/Resources;->MAX_TRACES_IN_RAM:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
