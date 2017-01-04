.class public Lit/unina/androidripper/strategy/criteria/NewActivityTransition;
.super Ljava/lang/Object;
.source "NewActivityTransition.java"

# interfaces
.implements Lit/unina/androidripper/strategy/criteria/TransitionCriteria;


# instance fields
.field private theStrategy:Lit/unina/androidripper/model/Strategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setStrategy(Lit/unina/androidripper/model/Strategy;)V
    .locals 0
    .parameter "theStrategy"

    .prologue
    .line 12
    iput-object p1, p0, Lit/unina/androidripper/strategy/criteria/NewActivityTransition;->theStrategy:Lit/unina/androidripper/model/Strategy;

    .line 13
    return-void
.end method

.method public transition()Z
    .locals 3

    .prologue
    .line 16
    const-string v0, "androidripper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Checking for Transition: from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lit/unina/androidripper/strategy/criteria/NewActivityTransition;->theStrategy:Lit/unina/androidripper/model/Strategy;

    invoke-interface {v2}, Lit/unina/androidripper/model/Strategy;->getStateBeforeEvent()Lcom/nofatclips/androidtesting/model/ActivityState;

    move-result-object v2

    invoke-interface {v2}, Lcom/nofatclips/androidtesting/model/ActivityState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lit/unina/androidripper/strategy/criteria/NewActivityTransition;->theStrategy:Lit/unina/androidripper/model/Strategy;

    invoke-interface {v2}, Lit/unina/androidripper/model/Strategy;->getStateBeforeEvent()Lcom/nofatclips/androidtesting/model/ActivityState;

    move-result-object v2

    invoke-interface {v2}, Lcom/nofatclips/androidtesting/model/ActivityState;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lit/unina/androidripper/strategy/criteria/NewActivityTransition;->theStrategy:Lit/unina/androidripper/model/Strategy;

    invoke-interface {v2}, Lit/unina/androidripper/model/Strategy;->getStateAfterEvent()Lcom/nofatclips/androidtesting/model/ActivityState;

    move-result-object v2

    invoke-interface {v2}, Lcom/nofatclips/androidtesting/model/ActivityState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lit/unina/androidripper/strategy/criteria/NewActivityTransition;->theStrategy:Lit/unina/androidripper/model/Strategy;

    invoke-interface {v2}, Lit/unina/androidripper/model/Strategy;->getStateAfterEvent()Lcom/nofatclips/androidtesting/model/ActivityState;

    move-result-object v2

    invoke-interface {v2}, Lcom/nofatclips/androidtesting/model/ActivityState;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iget-object v0, p0, Lit/unina/androidripper/strategy/criteria/NewActivityTransition;->theStrategy:Lit/unina/androidripper/model/Strategy;

    invoke-interface {v0}, Lit/unina/androidripper/model/Strategy;->getStateBeforeEvent()Lcom/nofatclips/androidtesting/model/ActivityState;

    move-result-object v0

    invoke-interface {v0}, Lcom/nofatclips/androidtesting/model/ActivityState;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lit/unina/androidripper/strategy/criteria/NewActivityTransition;->theStrategy:Lit/unina/androidripper/model/Strategy;

    invoke-interface {v1}, Lit/unina/androidripper/model/Strategy;->getStateAfterEvent()Lcom/nofatclips/androidtesting/model/ActivityState;

    move-result-object v1

    invoke-interface {v1}, Lcom/nofatclips/androidtesting/model/ActivityState;->getId()Ljava/lang/String;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
