.class public interface abstract Lcom/nofatclips/androidtesting/model/Transition;
.super Ljava/lang/Object;
.source "Transition.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lcom/nofatclips/androidtesting/model/WrapperInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/nofatclips/androidtesting/model/UserInput;",
        ">;",
        "Lcom/nofatclips/androidtesting/model/WrapperInterface;"
    }
.end annotation


# virtual methods
.method public abstract addInput(Lcom/nofatclips/androidtesting/model/UserInput;)V
.end method

.method public abstract getEvent()Lcom/nofatclips/androidtesting/model/UserEvent;
.end method

.method public abstract getFinalActivity()Lcom/nofatclips/androidtesting/model/ActivityState;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getStartActivity()Lcom/nofatclips/androidtesting/model/ActivityState;
.end method

.method public abstract setEvent(Lcom/nofatclips/androidtesting/model/UserEvent;)V
.end method

.method public abstract setFinalActivity(Lcom/nofatclips/androidtesting/model/ActivityState;)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setStartActivity(Lcom/nofatclips/androidtesting/model/ActivityState;)V
.end method
