.class public interface abstract Lit/unina/androidripper/model/TaskScheduler;
.super Ljava/lang/Object;
.source "TaskScheduler.java"


# virtual methods
.method public abstract addPlannedTasks(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nofatclips/androidtesting/model/Trace;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addTasks(Lcom/nofatclips/androidtesting/model/Trace;)V
.end method

.method public abstract addTasks(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/nofatclips/androidtesting/model/Trace;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getTaskList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nofatclips/androidtesting/model/Trace;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasMore()Z
.end method

.method public abstract nextTask()Lcom/nofatclips/androidtesting/model/Trace;
.end method

.method public abstract remove(Lcom/nofatclips/androidtesting/model/Trace;)V
.end method

.method public abstract setTaskList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nofatclips/androidtesting/model/Trace;",
            ">;)V"
        }
    .end annotation
.end method
