.class public Lit/unina/androidripper/strategy/NullStrategy;
.super Ljava/lang/Object;
.source "NullStrategy.java"

# interfaces
.implements Lit/unina/androidripper/model/Strategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addState(Lcom/nofatclips/androidtesting/model/ActivityState;)V
    .locals 0
    .parameter "newActivity"

    .prologue
    .line 12
    return-void
.end method

.method public checkForExploration()Z
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lit/unina/androidripper/strategy/NullStrategy;->isLastComparationPositive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkForPause()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public checkForTermination()Z
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public checkForTransition()Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method public compareState(Lcom/nofatclips/androidtesting/model/ActivityState;)Z
    .locals 1
    .parameter "theActivity"

    .prologue
    .line 15
    const/4 v0, 0x0

    return v0
.end method

.method public getComparator()Lit/unina/androidripper/model/Comparator;
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public getStateAfterEvent()Lcom/nofatclips/androidtesting/model/ActivityState;
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStateBeforeEvent()Lcom/nofatclips/androidtesting/model/ActivityState;
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTask()Lcom/nofatclips/androidtesting/model/Trace;
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public isLastComparationPositive()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public registerTerminationListener(Lit/unina/androidripper/model/TerminationListener;)V
    .locals 0
    .parameter "theListener"

    .prologue
    .line 58
    return-void
.end method

.method public setComparator(Lit/unina/androidripper/model/Comparator;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 22
    return-void
.end method

.method public setTask(Lcom/nofatclips/androidtesting/model/Trace;)V
    .locals 0
    .parameter "theTask"

    .prologue
    .line 32
    return-void
.end method
