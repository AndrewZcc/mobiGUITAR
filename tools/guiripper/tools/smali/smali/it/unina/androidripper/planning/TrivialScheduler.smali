.class Lit/unina/androidripper/planning/TrivialScheduler;
.super Ljava/lang/Object;
.source "TrivialScheduler.java"

# interfaces
.implements Lit/unina/androidripper/model/TaskScheduler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lit/unina/androidripper/planning/TrivialScheduler$1;
    }
.end annotation


# instance fields
.field private algorithm:Lit/unina/androidripper/planning/TraceDispatcher$SchedulerAlgorithm;

.field private tasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nofatclips/androidtesting/model/Trace;",
            ">;"
        }
    .end annotation
.end field

.field private final traceDispatcher:Lit/unina/androidripper/planning/TraceDispatcher;


# direct methods
.method public constructor <init>(Lit/unina/androidripper/planning/TraceDispatcher;Lit/unina/androidripper/planning/TraceDispatcher$SchedulerAlgorithm;)V
    .locals 0
    .parameter "traceDispatcher"
    .parameter "algorithm"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lit/unina/androidripper/planning/TrivialScheduler;->traceDispatcher:Lit/unina/androidripper/planning/TraceDispatcher;

    .line 25
    invoke-virtual {p0, p2}, Lit/unina/androidripper/planning/TrivialScheduler;->setSchedulerAlgorithm(Lit/unina/androidripper/planning/TraceDispatcher$SchedulerAlgorithm;)V

    .line 26
    return-void
.end method

.method private discardTasks()V
    .locals 2

    .prologue
    .line 85
    sget v0, Lit/unina/androidripper/planning/Resources;->MAX_TASKS_IN_SCHEDULER:I

    if-nez v0, :cond_1

    .line 97
    :cond_0
    return-void

    .line 89
    :pswitch_0
    invoke-virtual {p0}, Lit/unina/androidripper/planning/TrivialScheduler;->firstTask()Lcom/nofatclips/androidtesting/model/Trace;

    move-result-object v0

    invoke-virtual {p0, v0}, Lit/unina/androidripper/planning/TrivialScheduler;->remove(Lcom/nofatclips/androidtesting/model/Trace;)V

    .line 86
    :cond_1
    :goto_0
    iget-object v0, p0, Lit/unina/androidripper/planning/TrivialScheduler;->tasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lit/unina/androidripper/planning/Resources;->MAX_TASKS_IN_SCHEDULER:I

    if-lt v0, v1, :cond_0

    .line 87
    sget-object v0, Lit/unina/androidripper/planning/TrivialScheduler$1;->$SwitchMap$it$unina$androidripper$planning$TraceDispatcher$SchedulerAlgorithm:[I

    iget-object v1, p0, Lit/unina/androidripper/planning/TrivialScheduler;->algorithm:Lit/unina/androidripper/planning/TraceDispatcher$SchedulerAlgorithm;

    invoke-virtual {v1}, Lit/unina/androidripper/planning/TraceDispatcher$SchedulerAlgorithm;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 93
    invoke-virtual {p0}, Lit/unina/androidripper/planning/TrivialScheduler;->lastTask()Lcom/nofatclips/androidtesting/model/Trace;

    move-result-object v0

    invoke-virtual {p0, v0}, Lit/unina/androidripper/planning/TrivialScheduler;->remove(Lcom/nofatclips/androidtesting/model/Trace;)V

    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addPlannedTasks(Ljava/util/List;)V
    .locals 2
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
    .line 53
    .local p1, newTasks:Ljava/util/List;,"Ljava/util/List<Lcom/nofatclips/androidtesting/model/Trace;>;"
    sget-object v0, Lit/unina/androidripper/planning/TrivialScheduler$1;->$SwitchMap$it$unina$androidripper$planning$TraceDispatcher$SchedulerAlgorithm:[I

    iget-object v1, p0, Lit/unina/androidripper/planning/TrivialScheduler;->algorithm:Lit/unina/androidripper/planning/TraceDispatcher$SchedulerAlgorithm;

    invoke-virtual {v1}, Lit/unina/androidripper/planning/TraceDispatcher$SchedulerAlgorithm;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 59
    invoke-virtual {p0, p1}, Lit/unina/androidripper/planning/TrivialScheduler;->addTasks(Ljava/util/Collection;)V

    .line 61
    :goto_0
    return-void

    .line 55
    :pswitch_0
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 56
    invoke-virtual {p0, p1}, Lit/unina/androidripper/planning/TrivialScheduler;->addTasks(Ljava/util/Collection;)V

    goto :goto_0

    .line 53
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public addTasks(Lcom/nofatclips/androidtesting/model/Trace;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 80
    invoke-direct {p0}, Lit/unina/androidripper/planning/TrivialScheduler;->discardTasks()V

    .line 81
    iget-object v0, p0, Lit/unina/androidripper/planning/TrivialScheduler;->tasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method

.method public addTasks(Ljava/util/Collection;)V
    .locals 5
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
    .line 44
    .local p1, newTasks:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/nofatclips/androidtesting/model/Trace;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nofatclips/androidtesting/model/Trace;

    .line 45
    .local v2, t:Lcom/nofatclips/androidtesting/model/Trace;
    iget-object v4, p0, Lit/unina/androidripper/planning/TrivialScheduler;->tasks:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v4, p0, Lit/unina/androidripper/planning/TrivialScheduler;->traceDispatcher:Lit/unina/androidripper/planning/TraceDispatcher;

    iget-object v4, v4, Lit/unina/androidripper/planning/TraceDispatcher;->theListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lit/unina/androidripper/model/DispatchListener;

    .line 47
    .local v3, theListener:Lit/unina/androidripper/model/DispatchListener;
    invoke-interface {v3, v2}, Lit/unina/androidripper/model/DispatchListener;->onNewTaskAdded(Lcom/nofatclips/androidtesting/model/Trace;)V

    goto :goto_0

    .line 50
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #t:Lcom/nofatclips/androidtesting/model/Trace;
    .end local v3           #theListener:Lit/unina/androidripper/model/DispatchListener;
    :cond_1
    return-void
.end method

.method public firstTask()Lcom/nofatclips/androidtesting/model/Trace;
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lit/unina/androidripper/planning/TrivialScheduler;->tasks:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nofatclips/androidtesting/model/Trace;

    return-object v0
.end method

.method public getTaskList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nofatclips/androidtesting/model/Trace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lit/unina/androidripper/planning/TrivialScheduler;->tasks:Ljava/util/List;

    return-object v0
.end method

.method public hasMore()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lit/unina/androidripper/planning/TrivialScheduler;->tasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lastTask()Lcom/nofatclips/androidtesting/model/Trace;
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lit/unina/androidripper/planning/TrivialScheduler;->tasks:Ljava/util/List;

    iget-object v1, p0, Lit/unina/androidripper/planning/TrivialScheduler;->tasks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nofatclips/androidtesting/model/Trace;

    return-object v0
.end method

.method public nextTask()Lcom/nofatclips/androidtesting/model/Trace;
    .locals 3

    .prologue
    .line 33
    const-string v0, "androidripper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dispatching new task. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lit/unina/androidripper/planning/TrivialScheduler;->tasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " more tasks remaining."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-virtual {p0}, Lit/unina/androidripper/planning/TrivialScheduler;->hasMore()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 39
    :goto_0
    return-object v0

    .line 36
    :cond_0
    sget-object v0, Lit/unina/androidripper/planning/TrivialScheduler$1;->$SwitchMap$it$unina$androidripper$planning$TraceDispatcher$SchedulerAlgorithm:[I

    iget-object v1, p0, Lit/unina/androidripper/planning/TrivialScheduler;->algorithm:Lit/unina/androidripper/planning/TraceDispatcher$SchedulerAlgorithm;

    invoke-virtual {v1}, Lit/unina/androidripper/planning/TraceDispatcher$SchedulerAlgorithm;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 39
    invoke-virtual {p0}, Lit/unina/androidripper/planning/TrivialScheduler;->firstTask()Lcom/nofatclips/androidtesting/model/Trace;

    move-result-object v0

    goto :goto_0

    .line 37
    :pswitch_0
    invoke-virtual {p0}, Lit/unina/androidripper/planning/TrivialScheduler;->lastTask()Lcom/nofatclips/androidtesting/model/Trace;

    move-result-object v0

    goto :goto_0

    .line 36
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public remove(Lcom/nofatclips/androidtesting/model/Trace;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 76
    iget-object v0, p0, Lit/unina/androidripper/planning/TrivialScheduler;->tasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method

.method public setSchedulerAlgorithm(Lit/unina/androidripper/planning/TraceDispatcher$SchedulerAlgorithm;)V
    .locals 0
    .parameter "algorithm"

    .prologue
    .line 29
    iput-object p1, p0, Lit/unina/androidripper/planning/TrivialScheduler;->algorithm:Lit/unina/androidripper/planning/TraceDispatcher$SchedulerAlgorithm;

    .line 30
    return-void
.end method

.method public setTaskList(Ljava/util/List;)V
    .locals 0
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
    .line 64
    .local p1, theList:Ljava/util/List;,"Ljava/util/List<Lcom/nofatclips/androidtesting/model/Trace;>;"
    iput-object p1, p0, Lit/unina/androidripper/planning/TrivialScheduler;->tasks:Ljava/util/List;

    .line 65
    return-void
.end method
