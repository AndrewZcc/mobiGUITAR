.class public Lit/unina/androidripper/strategy/criteria/MaxStepsPause;
.super Ljava/lang/Object;
.source "MaxStepsPause.java"

# interfaces
.implements Lit/unina/androidripper/strategy/criteria/PauseCriteria;


# instance fields
.field private current:I

.field private max:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lit/unina/androidripper/strategy/criteria/MaxStepsPause;-><init>(I)V

    .line 13
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "maxSteps"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lit/unina/androidripper/strategy/criteria/MaxStepsPause;->max:I

    .line 17
    invoke-virtual {p0}, Lit/unina/androidripper/strategy/criteria/MaxStepsPause;->reset()V

    .line 18
    return-void
.end method


# virtual methods
.method public pause()Z
    .locals 3

    .prologue
    .line 21
    iget v0, p0, Lit/unina/androidripper/strategy/criteria/MaxStepsPause;->current:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lit/unina/androidripper/strategy/criteria/MaxStepsPause;->current:I

    .line 22
    const-string v0, "androidripper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Check for pause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lit/unina/androidripper/strategy/criteria/MaxStepsPause;->current:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " steps left of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lit/unina/androidripper/strategy/criteria/MaxStepsPause;->max:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget v0, p0, Lit/unina/androidripper/strategy/criteria/MaxStepsPause;->current:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lit/unina/androidripper/strategy/criteria/MaxStepsPause;->max:I

    iput v0, p0, Lit/unina/androidripper/strategy/criteria/MaxStepsPause;->current:I

    .line 28
    return-void
.end method

.method public setStrategy(Lit/unina/androidripper/model/Strategy;)V
    .locals 0
    .parameter "theStrategy"

    .prologue
    .line 30
    return-void
.end method
