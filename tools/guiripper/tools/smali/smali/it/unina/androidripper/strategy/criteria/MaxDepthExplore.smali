.class public Lit/unina/androidripper/strategy/criteria/MaxDepthExplore;
.super Ljava/lang/Object;
.source "MaxDepthExplore.java"

# interfaces
.implements Lit/unina/androidripper/strategy/criteria/ExplorationCriteria;


# instance fields
.field private maxDepth:I

.field private theStrategy:Lit/unina/androidripper/model/Strategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "maxDepth"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p0, p1}, Lit/unina/androidripper/strategy/criteria/MaxDepthExplore;->setMaxDepth(I)V

    .line 15
    return-void
.end method


# virtual methods
.method public exploration()Z
    .locals 4

    .prologue
    .line 30
    iget-object v1, p0, Lit/unina/androidripper/strategy/criteria/MaxDepthExplore;->theStrategy:Lit/unina/androidripper/model/Strategy;

    invoke-interface {v1}, Lit/unina/androidripper/model/Strategy;->getDepth()I

    move-result v0

    .line 31
    .local v0, transitions:I
    const-string v1, "androidripper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Checking for depth: this trace is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " transitions deep (max = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lit/unina/androidripper/strategy/criteria/MaxDepthExplore;->getMaxDepth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-virtual {p0}, Lit/unina/androidripper/strategy/criteria/MaxDepthExplore;->getMaxDepth()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMaxDepth()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lit/unina/androidripper/strategy/criteria/MaxDepthExplore;->maxDepth:I

    return v0
.end method

.method public setMaxDepth(I)V
    .locals 0
    .parameter "maxDepth"

    .prologue
    .line 18
    iput p1, p0, Lit/unina/androidripper/strategy/criteria/MaxDepthExplore;->maxDepth:I

    .line 19
    return-void
.end method

.method public setStrategy(Lit/unina/androidripper/model/Strategy;)V
    .locals 0
    .parameter "theStrategy"

    .prologue
    .line 26
    iput-object p1, p0, Lit/unina/androidripper/strategy/criteria/MaxDepthExplore;->theStrategy:Lit/unina/androidripper/model/Strategy;

    .line 27
    return-void
.end method
