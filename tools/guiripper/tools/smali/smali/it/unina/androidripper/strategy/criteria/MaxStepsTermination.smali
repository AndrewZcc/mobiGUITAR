.class public Lit/unina/androidripper/strategy/criteria/MaxStepsTermination;
.super Ljava/lang/Object;
.source "MaxStepsTermination.java"

# interfaces
.implements Lit/unina/androidripper/strategy/criteria/TerminationCriteria;
.implements Lit/unina/androidripper/model/SaveStateListener;


# static fields
.field private static final ACTOR_NAME:Ljava/lang/String; = "MaxStepsTermination"

.field private static final PARAM_NAME:Ljava/lang/String; = "current"


# instance fields
.field private current:I

.field private max:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lit/unina/androidripper/strategy/criteria/MaxStepsTermination;-><init>(I)V

    .line 19
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "maxSteps"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lit/unina/androidripper/strategy/criteria/MaxStepsTermination;->max:I

    .line 23
    invoke-virtual {p0}, Lit/unina/androidripper/strategy/criteria/MaxStepsTermination;->reset()V

    .line 24
    invoke-static {p0}, Lit/unina/androidripper/storage/PersistenceFactory;->registerForSavingState(Lit/unina/androidripper/model/SaveStateListener;)V

    .line 25
    return-void
.end method


# virtual methods
.method public getListenerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-string v0, "MaxStepsTermination"

    return-object v0
.end method

.method public onLoadingState(Lit/unina/androidripper/model/SessionParams;)V
    .locals 3
    .parameter "sessionParams"

    .prologue
    .line 44
    const-string v0, "current"

    invoke-virtual {p1, v0}, Lit/unina/androidripper/model/SessionParams;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lit/unina/androidripper/strategy/criteria/MaxStepsTermination;->current:I

    .line 45
    const-string v0, "androidripper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current step countdown restored to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lit/unina/androidripper/strategy/criteria/MaxStepsTermination;->current:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void
.end method

.method public onSavingState()Lit/unina/androidripper/model/SessionParams;
    .locals 3

    .prologue
    .line 40
    new-instance v0, Lit/unina/androidripper/model/SessionParams;

    const-string v1, "current"

    iget v2, p0, Lit/unina/androidripper/strategy/criteria/MaxStepsTermination;->current:I

    invoke-direct {v0, v1, v2}, Lit/unina/androidripper/model/SessionParams;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lit/unina/androidripper/strategy/criteria/MaxStepsTermination;->max:I

    iput v0, p0, Lit/unina/androidripper/strategy/criteria/MaxStepsTermination;->current:I

    .line 35
    return-void
.end method

.method public setStrategy(Lit/unina/androidripper/model/Strategy;)V
    .locals 0
    .parameter "theStrategy"

    .prologue
    .line 37
    return-void
.end method

.method public termination()Z
    .locals 3

    .prologue
    .line 28
    iget v0, p0, Lit/unina/androidripper/strategy/criteria/MaxStepsTermination;->current:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lit/unina/androidripper/strategy/criteria/MaxStepsTermination;->current:I

    .line 29
    const-string v0, "androidripper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Check for termination: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lit/unina/androidripper/strategy/criteria/MaxStepsTermination;->current:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " steps left of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lit/unina/androidripper/strategy/criteria/MaxStepsTermination;->max:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget v0, p0, Lit/unina/androidripper/strategy/criteria/MaxStepsTermination;->current:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
