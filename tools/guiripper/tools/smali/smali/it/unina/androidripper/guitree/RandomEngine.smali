.class public Lit/unina/androidripper/guitree/RandomEngine;
.super Lit/unina/androidripper/guitree/GuiTreeEngine;
.source "RandomEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lit/unina/androidripper/guitree/RandomEngine$SaveStateRandom;
    }
.end annotation


# instance fields
.field first:Z

.field taskLottery:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    invoke-direct {p0}, Lit/unina/androidripper/guitree/GuiTreeEngine;-><init>()V

    .line 31
    iget-object v0, p0, Lit/unina/androidripper/guitree/RandomEngine;->theStrategyFactory:Lit/unina/androidripper/strategy/StrategyFactory;

    invoke-virtual {v0, v3}, Lit/unina/androidripper/strategy/StrategyFactory;->setExploreNewOnly(Z)V

    .line 32
    const-string v0, "androidripper"

    const-string v1, "Starting random testing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    new-instance v0, Lit/unina/androidripper/guitree/RandomEngine$SaveStateRandom;

    sget-wide v1, Lit/unina/androidripper/Resources;->RANDOM_SEED:J

    invoke-direct {v0, p0, v1, v2}, Lit/unina/androidripper/guitree/RandomEngine$SaveStateRandom;-><init>(Lit/unina/androidripper/guitree/RandomEngine;J)V

    iput-object v0, p0, Lit/unina/androidripper/guitree/RandomEngine;->taskLottery:Ljava/util/Random;

    .line 34
    iget-object v0, p0, Lit/unina/androidripper/guitree/RandomEngine;->theStrategyFactory:Lit/unina/androidripper/strategy/StrategyFactory;

    new-array v1, v4, [Lit/unina/androidripper/model/StrategyCriteria;

    new-instance v2, Lit/unina/androidripper/strategy/criteria/OnExitPause;

    invoke-direct {v2}, Lit/unina/androidripper/strategy/criteria/OnExitPause;-><init>()V

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lit/unina/androidripper/strategy/StrategyFactory;->setMoreCriterias([Lit/unina/androidripper/model/StrategyCriteria;)V

    .line 35
    iget-object v0, p0, Lit/unina/androidripper/guitree/RandomEngine;->theStrategyFactory:Lit/unina/androidripper/strategy/StrategyFactory;

    invoke-virtual {v0, v3}, Lit/unina/androidripper/strategy/StrategyFactory;->setPauseTraces(I)V

    .line 36
    iget-object v0, p0, Lit/unina/androidripper/guitree/RandomEngine;->theStrategyFactory:Lit/unina/androidripper/strategy/StrategyFactory;

    invoke-virtual {v0, v3}, Lit/unina/androidripper/strategy/StrategyFactory;->setExploreNewOnly(Z)V

    .line 37
    invoke-virtual {p0}, Lit/unina/androidripper/guitree/RandomEngine;->addMoreCriteria()V

    .line 38
    iput-boolean v4, p0, Lit/unina/androidripper/guitree/RandomEngine;->first:Z

    .line 39
    return-void
.end method


# virtual methods
.method public addMoreCriteria()V
    .locals 5

    .prologue
    .line 43
    sget v0, Lit/unina/androidripper/strategy/Resources;->TRACE_MAX_DEPTH:I

    if-lez v0, :cond_0

    .line 44
    iget-object v0, p0, Lit/unina/androidripper/guitree/RandomEngine;->theStrategyFactory:Lit/unina/androidripper/strategy/StrategyFactory;

    const/4 v1, 0x1

    new-array v1, v1, [Lit/unina/androidripper/model/StrategyCriteria;

    const/4 v2, 0x0

    new-instance v3, Lit/unina/androidripper/strategy/criteria/MaxDepthTermination;

    sget v4, Lit/unina/androidripper/strategy/Resources;->TRACE_MAX_DEPTH:I

    invoke-direct {v3, v4}, Lit/unina/androidripper/strategy/criteria/MaxDepthTermination;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lit/unina/androidripper/strategy/StrategyFactory;->setMoreCriterias([Lit/unina/androidripper/model/StrategyCriteria;)V

    .line 46
    :cond_0
    return-void
.end method

.method protected doNotPlanTests()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lit/unina/androidripper/guitree/RandomEngine;->first:Z

    .line 74
    return-void
.end method

.method public getNewScheduler()Lit/unina/androidripper/planning/TraceDispatcher;
    .locals 2

    .prologue
    .line 79
    new-instance v0, Lit/unina/androidripper/planning/TraceDispatcher;

    sget-object v1, Lit/unina/androidripper/planning/TraceDispatcher$SchedulerAlgorithm;->DEPTH_FIRST:Lit/unina/androidripper/planning/TraceDispatcher$SchedulerAlgorithm;

    invoke-direct {v0, v1}, Lit/unina/androidripper/planning/TraceDispatcher;-><init>(Lit/unina/androidripper/planning/TraceDispatcher$SchedulerAlgorithm;)V

    return-object v0
.end method

.method public getRandom(I)I
    .locals 2
    .parameter "max"

    .prologue
    .line 103
    iget-object v1, p0, Lit/unina/androidripper/guitree/RandomEngine;->taskLottery:Ljava/util/Random;

    invoke-virtual {v1, p1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 104
    .local v0, n:I
    return v0
.end method

.method public isBase()Z
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lit/unina/androidripper/guitree/RandomEngine;->getStrategy()Lit/unina/androidripper/model/Strategy;

    move-result-object v0

    invoke-interface {v0}, Lit/unina/androidripper/model/Strategy;->getStateAfterEvent()Lcom/nofatclips/androidtesting/model/ActivityState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lit/unina/androidripper/guitree/RandomEngine;->isBase(Lcom/nofatclips/androidtesting/model/ActivityState;)Z

    move-result v0

    return v0
.end method

.method public isBase(Lcom/nofatclips/androidtesting/model/ActivityState;)Z
    .locals 2
    .parameter "s"

    .prologue
    .line 98
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 99
    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/ActivityState;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lit/unina/androidripper/guitree/RandomEngine;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v1

    invoke-interface {v1}, Lit/unina/androidripper/model/Abstractor;->getBaseActivity()Lcom/nofatclips/androidtesting/model/ActivityState;

    move-result-object v1

    invoke-interface {v1}, Lcom/nofatclips/androidtesting/model/ActivityState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected planTests(Lcom/nofatclips/androidtesting/model/Trace;Lit/unina/androidripper/model/Plan;)V
    .locals 6
    .parameter "theTask"
    .parameter "thePlan"

    .prologue
    .line 59
    :goto_0
    invoke-virtual {p2}, Lit/unina/androidripper/model/Plan;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 60
    invoke-virtual {p2}, Lit/unina/androidripper/model/Plan;->size()I

    move-result v0

    .line 61
    .local v0, max:I
    invoke-virtual {p0, v0}, Lit/unina/androidripper/guitree/RandomEngine;->getRandom(I)I

    move-result v1

    .line 62
    .local v1, n:I
    invoke-virtual {p2, v1}, Lit/unina/androidripper/model/Plan;->getTask(I)Lcom/nofatclips/androidtesting/model/Transition;

    move-result-object v2

    .line 63
    .local v2, t:Lcom/nofatclips/androidtesting/model/Transition;
    invoke-interface {v2}, Lcom/nofatclips/androidtesting/model/Transition;->getEvent()Lcom/nofatclips/androidtesting/model/UserEvent;

    move-result-object v4

    invoke-interface {v4}, Lcom/nofatclips/androidtesting/model/UserEvent;->getType()Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, type:Ljava/lang/String;
    invoke-virtual {p0}, Lit/unina/androidripper/guitree/RandomEngine;->isBase()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "back"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 65
    :cond_0
    invoke-virtual {p0}, Lit/unina/androidripper/guitree/RandomEngine;->getScheduler()Lit/unina/androidripper/planning/TraceDispatcher;

    move-result-object v4

    invoke-virtual {p0, p1, v2}, Lit/unina/androidripper/guitree/RandomEngine;->getNewTask(Lcom/nofatclips/androidtesting/model/Trace;Lcom/nofatclips/androidtesting/model/Transition;)Lcom/nofatclips/androidtesting/model/Trace;

    move-result-object v5

    invoke-virtual {v4, v5}, Lit/unina/androidripper/planning/TraceDispatcher;->addTasks(Lcom/nofatclips/androidtesting/model/Trace;)V

    .line 67
    :cond_1
    invoke-virtual {p2, v1}, Lit/unina/androidripper/model/Plan;->removeTask(I)V

    goto :goto_0

    .line 69
    .end local v0           #max:I
    .end local v1           #n:I
    .end local v2           #t:Lcom/nofatclips/androidtesting/model/Transition;
    .end local v3           #type:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method protected process(Lcom/nofatclips/androidtesting/model/Trace;)V
    .locals 3
    .parameter "theTask"

    .prologue
    .line 84
    iget-boolean v0, p0, Lit/unina/androidripper/guitree/RandomEngine;->first:Z

    if-eqz v0, :cond_0

    .line 85
    invoke-super {p0, p1}, Lit/unina/androidripper/guitree/GuiTreeEngine;->process(Lcom/nofatclips/androidtesting/model/Trace;)V

    .line 90
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lit/unina/androidripper/guitree/RandomEngine;->first:Z

    .line 91
    return-void

    .line 87
    :cond_0
    const-string v0, "androidripper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incrementally Playing Trace "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/Trace;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {p0}, Lit/unina/androidripper/guitree/RandomEngine;->getRobot()Lit/unina/androidripper/model/Robot;

    move-result-object v0

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/Trace;->getFinalTransition()Lcom/nofatclips/androidtesting/model/Transition;

    move-result-object v1

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/Robot;->process(Lcom/nofatclips/androidtesting/model/Transition;)V

    goto :goto_0
.end method

.method protected setUp()V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0}, Lit/unina/androidripper/guitree/GuiTreeEngine;->setUp()V

    .line 51
    return-void
.end method
