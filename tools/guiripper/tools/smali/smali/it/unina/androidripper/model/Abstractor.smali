.class public interface abstract Lit/unina/androidripper/model/Abstractor;
.super Ljava/lang/Object;
.source "Abstractor.java"


# virtual methods
.method public abstract createActivity(Lit/unina/androidripper/model/ActivityDescription;)Lcom/nofatclips/androidtesting/model/ActivityState;
.end method

.method public abstract createEvent(Lcom/nofatclips/androidtesting/model/WidgetState;Ljava/lang/String;)Lcom/nofatclips/androidtesting/model/UserEvent;
.end method

.method public abstract createInput(Lcom/nofatclips/androidtesting/model/WidgetState;Ljava/lang/String;Ljava/lang/String;)Lcom/nofatclips/androidtesting/model/UserInput;
.end method

.method public abstract createStep(Lcom/nofatclips/androidtesting/model/ActivityState;Ljava/util/Collection;Lcom/nofatclips/androidtesting/model/UserEvent;)Lcom/nofatclips/androidtesting/model/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nofatclips/androidtesting/model/ActivityState;",
            "Ljava/util/Collection",
            "<",
            "Lcom/nofatclips/androidtesting/model/UserInput;",
            ">;",
            "Lcom/nofatclips/androidtesting/model/UserEvent;",
            ")",
            "Lcom/nofatclips/androidtesting/model/Transition;"
        }
    .end annotation
.end method

.method public abstract createTrace(Lcom/nofatclips/androidtesting/model/Trace;Lcom/nofatclips/androidtesting/model/Transition;)Lcom/nofatclips/androidtesting/model/Trace;
.end method

.method public abstract getBaseActivity()Lcom/nofatclips/androidtesting/model/ActivityState;
.end method

.method public abstract importState(Lorg/w3c/dom/Element;)Lcom/nofatclips/androidtesting/model/ActivityState;
.end method

.method public abstract importTask(Lorg/w3c/dom/Element;)Lcom/nofatclips/androidtesting/model/Trace;
.end method

.method public abstract setBaseActivity(Lit/unina/androidripper/model/ActivityDescription;)V
.end method

.method public abstract setFinalActivity(Lcom/nofatclips/androidtesting/model/Trace;Lcom/nofatclips/androidtesting/model/ActivityState;)V
.end method

.method public abstract updateDescription(Lcom/nofatclips/androidtesting/model/ActivityState;Lit/unina/androidripper/model/ActivityDescription;)Z
.end method
