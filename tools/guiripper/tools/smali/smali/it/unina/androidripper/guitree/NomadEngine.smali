.class public Lit/unina/androidripper/guitree/NomadEngine;
.super Lit/unina/androidripper/guitree/RandomEngine;
.source "NomadEngine.java"

# interfaces
.implements Lit/unina/androidripper/model/MemorylessEngine;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lit/unina/androidripper/guitree/RandomEngine;-><init>()V

    return-void
.end method


# virtual methods
.method public addMoreCriteria()V
    .locals 5

    .prologue
    .line 19
    sget v0, Lit/unina/androidripper/strategy/Resources;->TRACE_MAX_DEPTH:I

    if-lez v0, :cond_0

    .line 20
    iget-object v0, p0, Lit/unina/androidripper/guitree/NomadEngine;->theStrategyFactory:Lit/unina/androidripper/strategy/StrategyFactory;

    const/4 v1, 0x1

    new-array v1, v1, [Lit/unina/androidripper/model/StrategyCriteria;

    const/4 v2, 0x0

    new-instance v3, Lit/unina/androidripper/strategy/criteria/MaxDepthPause;

    sget v4, Lit/unina/androidripper/strategy/Resources;->TRACE_MAX_DEPTH:I

    invoke-direct {v3, v4}, Lit/unina/androidripper/strategy/criteria/MaxDepthPause;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lit/unina/androidripper/strategy/StrategyFactory;->setMoreCriterias([Lit/unina/androidripper/model/StrategyCriteria;)V

    .line 22
    :cond_0
    return-void
.end method

.method protected setupAfterResume()V
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lit/unina/androidripper/guitree/NomadEngine;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v0

    invoke-interface {v0}, Lit/unina/androidripper/model/Abstractor;->getBaseActivity()Lcom/nofatclips/androidtesting/model/ActivityState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lit/unina/androidripper/guitree/NomadEngine;->planFirstTests(Lcom/nofatclips/androidtesting/model/ActivityState;)V

    .line 14
    return-void
.end method
