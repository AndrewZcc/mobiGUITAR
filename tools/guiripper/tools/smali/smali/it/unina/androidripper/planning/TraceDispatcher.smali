.class public Lit/unina/androidripper/planning/TraceDispatcher;
.super Ljava/lang/Object;
.source "TraceDispatcher.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lit/unina/androidripper/planning/TraceDispatcher$SchedulerAlgorithm;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/nofatclips/androidtesting/model/Trace;",
        ">;"
    }
.end annotation


# instance fields
.field private scheduler:Lit/unina/androidripper/model/TaskScheduler;

.field theListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lit/unina/androidripper/model/DispatchListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lit/unina/androidripper/planning/Resources;->SCHEDULER_ALGORITHM:Ljava/lang/String;

    invoke-direct {p0, v0}, Lit/unina/androidripper/planning/TraceDispatcher;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Lit/unina/androidripper/model/TaskScheduler;)V
    .locals 1
    .parameter "taskScheduler"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lit/unina/androidripper/planning/TraceDispatcher;->theListeners:Ljava/util/List;

    .line 37
    invoke-virtual {p0, p1}, Lit/unina/androidripper/planning/TraceDispatcher;->setScheduler(Lit/unina/androidripper/model/TaskScheduler;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lit/unina/androidripper/planning/TraceDispatcher$SchedulerAlgorithm;)V
    .locals 1
    .parameter "algorithm"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lit/unina/androidripper/planning/TraceDispatcher;->theListeners:Ljava/util/List;

    .line 33
    invoke-virtual {p0, p1}, Lit/unina/androidripper/planning/TraceDispatcher;->getTrivialScheduler(Lit/unina/androidripper/planning/TraceDispatcher$SchedulerAlgorithm;)Lit/unina/androidripper/model/TaskScheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lit/unina/androidripper/planning/TraceDispatcher;->setScheduler(Lit/unina/androidripper/model/TaskScheduler;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "algorithm"

    .prologue
    .line 29
    invoke-static {p1}, Lit/unina/androidripper/planning/TraceDispatcher$SchedulerAlgorithm;->valueOf(Ljava/lang/String;)Lit/unina/androidripper/planning/TraceDispatcher$SchedulerAlgorithm;

    move-result-object v0

    invoke-direct {p0, v0}, Lit/unina/androidripper/planning/TraceDispatcher;-><init>(Lit/unina/androidripper/planning/TraceDispatcher$SchedulerAlgorithm;)V

    .line 30
    return-void
.end method

.method static synthetic access$000(Lit/unina/androidripper/planning/TraceDispatcher;)Lit/unina/androidripper/model/TaskScheduler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lit/unina/androidripper/planning/TraceDispatcher;->scheduler:Lit/unina/androidripper/model/TaskScheduler;

    return-object v0
.end method


# virtual methods
.method public addPlannedTasks(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nofatclips/androidtesting/model/Trace;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, t:Ljava/util/List;,"Ljava/util/List<Lcom/nofatclips/androidtesting/model/Trace;>;"
    invoke-virtual {p0}, Lit/unina/androidripper/planning/TraceDispatcher;->getScheduler()Lit/unina/androidripper/model/TaskScheduler;

    move-result-object v0

    invoke-interface {v0, p1}, Lit/unina/androidripper/model/TaskScheduler;->addPlannedTasks(Ljava/util/List;)V

    .line 46
    return-void
.end method

.method public addTasks(Lcom/nofatclips/androidtesting/model/Trace;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 53
    invoke-virtual {p0}, Lit/unina/androidripper/planning/TraceDispatcher;->getScheduler()Lit/unina/androidripper/model/TaskScheduler;

    move-result-object v0

    invoke-interface {v0, p1}, Lit/unina/androidripper/model/TaskScheduler;->addTasks(Lcom/nofatclips/androidtesting/model/Trace;)V

    .line 54
    return-void
.end method

.method public addTasks(Ljava/util/Collection;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/nofatclips/androidtesting/model/Trace;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, t:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/nofatclips/androidtesting/model/Trace;>;"
    invoke-virtual {p0}, Lit/unina/androidripper/planning/TraceDispatcher;->getScheduler()Lit/unina/androidripper/model/TaskScheduler;

    move-result-object v0

    invoke-interface {v0, p1}, Lit/unina/androidripper/model/TaskScheduler;->addTasks(Ljava/util/Collection;)V

    .line 50
    return-void
.end method

.method public getScheduler()Lit/unina/androidripper/model/TaskScheduler;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lit/unina/androidripper/planning/TraceDispatcher;->scheduler:Lit/unina/androidripper/model/TaskScheduler;

    return-object v0
.end method

.method public getTrivialScheduler(Lit/unina/androidripper/planning/TraceDispatcher$SchedulerAlgorithm;)Lit/unina/androidripper/model/TaskScheduler;
    .locals 2
    .parameter "a"

    .prologue
    .line 57
    new-instance v0, Lit/unina/androidripper/planning/TrivialScheduler;

    invoke-direct {v0, p0, p1}, Lit/unina/androidripper/planning/TrivialScheduler;-><init>(Lit/unina/androidripper/planning/TraceDispatcher;Lit/unina/androidripper/planning/TraceDispatcher$SchedulerAlgorithm;)V

    .line 58
    .local v0, s:Lit/unina/androidripper/model/TaskScheduler;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/TaskScheduler;->setTaskList(Ljava/util/List;)V

    .line 59
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/nofatclips/androidtesting/model/Trace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Lit/unina/androidripper/planning/TraceDispatcher$1;

    invoke-direct {v0, p0}, Lit/unina/androidripper/planning/TraceDispatcher$1;-><init>(Lit/unina/androidripper/planning/TraceDispatcher;)V

    return-object v0
.end method

.method public registerListener(Lit/unina/androidripper/model/DispatchListener;)V
    .locals 1
    .parameter "theListener"

    .prologue
    .line 67
    iget-object v0, p0, Lit/unina/androidripper/planning/TraceDispatcher;->theListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method

.method public setScheduler(Lit/unina/androidripper/model/TaskScheduler;)V
    .locals 0
    .parameter "ts"

    .prologue
    .line 41
    iput-object p1, p0, Lit/unina/androidripper/planning/TraceDispatcher;->scheduler:Lit/unina/androidripper/model/TaskScheduler;

    .line 42
    return-void
.end method
