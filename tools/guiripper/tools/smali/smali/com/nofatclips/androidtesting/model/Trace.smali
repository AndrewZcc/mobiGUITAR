.class public interface abstract Lcom/nofatclips/androidtesting/model/Trace;
.super Ljava/lang/Object;
.source "Trace.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lcom/nofatclips/androidtesting/model/WrapperInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/nofatclips/androidtesting/model/Transition;",
        ">;",
        "Lcom/nofatclips/androidtesting/model/WrapperInterface;"
    }
.end annotation


# virtual methods
.method public abstract addTransition(Lcom/nofatclips/androidtesting/model/Transition;)V
.end method

.method public abstract getDateTime()Ljava/lang/String;
.end method

.method public abstract getFinalTransition()Lcom/nofatclips/androidtesting/model/Transition;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract isAsync()Z
.end method

.method public abstract isFailed()Z
.end method

.method public abstract setAsync(Z)V
.end method

.method public abstract setDateTime(Ljava/lang/String;)V
.end method

.method public abstract setFailed(Z)V
.end method

.method public abstract setFinalActivity(Lcom/nofatclips/androidtesting/model/ActivityState;)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract transitions()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/nofatclips/androidtesting/model/Transition;",
            ">;"
        }
    .end annotation
.end method
