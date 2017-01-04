.class public Lit/unina/androidripper/strategy/criteria/NewActivityExplore;
.super Ljava/lang/Object;
.source "NewActivityExplore.java"

# interfaces
.implements Lit/unina/androidripper/strategy/criteria/ExplorationCriteria;


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
.method public exploration()Z
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lit/unina/androidripper/strategy/criteria/NewActivityExplore;->theStrategy:Lit/unina/androidripper/model/Strategy;

    invoke-interface {v0}, Lit/unina/androidripper/model/Strategy;->isLastComparationPositive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStrategy(Lit/unina/androidripper/model/Strategy;)V
    .locals 0
    .parameter "theStrategy"

    .prologue
    .line 10
    iput-object p1, p0, Lit/unina/androidripper/strategy/criteria/NewActivityExplore;->theStrategy:Lit/unina/androidripper/model/Strategy;

    .line 11
    return-void
.end method
