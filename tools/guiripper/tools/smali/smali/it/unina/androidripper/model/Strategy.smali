.class public interface abstract Lit/unina/androidripper/model/Strategy;
.super Ljava/lang/Object;
.source "Strategy.java"


# virtual methods
.method public abstract addState(Lcom/nofatclips/androidtesting/model/ActivityState;)V
.end method

.method public abstract checkForExploration()Z
.end method

.method public abstract checkForPause()Z
.end method

.method public abstract checkForTermination()Z
.end method

.method public abstract checkForTransition()Z
.end method

.method public abstract compareState(Lcom/nofatclips/androidtesting/model/ActivityState;)Z
.end method

.method public abstract getComparator()Lit/unina/androidripper/model/Comparator;
.end method

.method public abstract getDepth()I
.end method

.method public abstract getStateAfterEvent()Lcom/nofatclips/androidtesting/model/ActivityState;
.end method

.method public abstract getStateBeforeEvent()Lcom/nofatclips/androidtesting/model/ActivityState;
.end method

.method public abstract getTask()Lcom/nofatclips/androidtesting/model/Trace;
.end method

.method public abstract isLastComparationPositive()Z
.end method

.method public abstract registerTerminationListener(Lit/unina/androidripper/model/TerminationListener;)V
.end method

.method public abstract setComparator(Lit/unina/androidripper/model/Comparator;)V
.end method

.method public abstract setTask(Lcom/nofatclips/androidtesting/model/Trace;)V
.end method
