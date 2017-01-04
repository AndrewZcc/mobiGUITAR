.class public Lit/unina/androidripper/strategy/criteria/OnExitPause;
.super Ljava/lang/Object;
.source "OnExitPause.java"

# interfaces
.implements Lit/unina/androidripper/strategy/criteria/PauseCriteria;


# instance fields
.field private theStrategy:Lit/unina/androidripper/model/Strategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public pause()Z
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lit/unina/androidripper/strategy/criteria/OnExitPause;->theStrategy:Lit/unina/androidripper/model/Strategy;

    invoke-interface {v0}, Lit/unina/androidripper/model/Strategy;->getStateAfterEvent()Lcom/nofatclips/androidtesting/model/ActivityState;

    move-result-object v0

    invoke-interface {v0}, Lcom/nofatclips/androidtesting/model/ActivityState;->isExit()Z

    move-result v0

    return v0
.end method

.method public setStrategy(Lit/unina/androidripper/model/Strategy;)V
    .locals 0
    .parameter "theStrategy"

    .prologue
    .line 10
    iput-object p1, p0, Lit/unina/androidripper/strategy/criteria/OnExitPause;->theStrategy:Lit/unina/androidripper/model/Strategy;

    .line 11
    return-void
.end method
