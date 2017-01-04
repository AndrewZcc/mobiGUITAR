.class public Lit/unina/androidripper/strategy/CustomStrategy;
.super Lit/unina/androidripper/strategy/SimpleStrategy;
.source "CustomStrategy.java"


# instance fields
.field private explorers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lit/unina/androidripper/strategy/criteria/ExplorationCriteria;",
            ">;"
        }
    .end annotation
.end field

.field private transitioners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lit/unina/androidripper/strategy/criteria/TransitionCriteria;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lit/unina/androidripper/strategy/SimpleStrategy;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lit/unina/androidripper/strategy/CustomStrategy;->explorers:Ljava/util/Collection;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lit/unina/androidripper/strategy/CustomStrategy;->transitioners:Ljava/util/Collection;

    .line 18
    return-void
.end method

.method public constructor <init>(Lit/unina/androidripper/model/Comparator;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lit/unina/androidripper/strategy/SimpleStrategy;-><init>(Lit/unina/androidripper/model/Comparator;)V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lit/unina/androidripper/strategy/CustomStrategy;->explorers:Ljava/util/Collection;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lit/unina/androidripper/strategy/CustomStrategy;->transitioners:Ljava/util/Collection;

    .line 22
    return-void
.end method

.method public varargs constructor <init>(Lit/unina/androidripper/model/Comparator;[Lit/unina/androidripper/model/StrategyCriteria;)V
    .locals 4
    .parameter "c"
    .parameter "criterias"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lit/unina/androidripper/strategy/CustomStrategy;-><init>(Lit/unina/androidripper/model/Comparator;)V

    .line 26
    move-object v0, p2

    .local v0, arr$:[Lit/unina/androidripper/model/StrategyCriteria;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 27
    .local v3, s:Lit/unina/androidripper/model/StrategyCriteria;
    if-nez v3, :cond_0

    .line 26
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0, v3}, Lit/unina/androidripper/strategy/CustomStrategy;->addCriteria(Lit/unina/androidripper/model/StrategyCriteria;)V

    goto :goto_1

    .line 30
    .end local v3           #s:Lit/unina/androidripper/model/StrategyCriteria;
    :cond_1
    return-void
.end method


# virtual methods
.method public addCriteria(Lit/unina/androidripper/model/StrategyCriteria;)V
    .locals 1
    .parameter "criteria"

    .prologue
    .line 33
    instance-of v0, p1, Lit/unina/androidripper/strategy/criteria/ExplorationCriteria;

    if-eqz v0, :cond_1

    .line 34
    check-cast p1, Lit/unina/androidripper/strategy/criteria/ExplorationCriteria;

    .end local p1
    invoke-virtual {p0, p1}, Lit/unina/androidripper/strategy/CustomStrategy;->addExplorationCriteria(Lit/unina/androidripper/strategy/criteria/ExplorationCriteria;)V

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 35
    .restart local p1
    :cond_1
    instance-of v0, p1, Lit/unina/androidripper/strategy/criteria/TransitionCriteria;

    if-eqz v0, :cond_2

    .line 36
    check-cast p1, Lit/unina/androidripper/strategy/criteria/TransitionCriteria;

    .end local p1
    invoke-virtual {p0, p1}, Lit/unina/androidripper/strategy/CustomStrategy;->addTransitionCriteria(Lit/unina/androidripper/strategy/criteria/TransitionCriteria;)V

    goto :goto_0

    .line 37
    .restart local p1
    :cond_2
    instance-of v0, p1, Lit/unina/androidripper/strategy/criteria/TerminationCriteria;

    if-eqz v0, :cond_3

    .line 38
    check-cast p1, Lit/unina/androidripper/strategy/criteria/TerminationCriteria;

    .end local p1
    invoke-virtual {p0, p1}, Lit/unina/androidripper/strategy/CustomStrategy;->addTerminationCriteria(Lit/unina/androidripper/strategy/criteria/TerminationCriteria;)V

    goto :goto_0

    .line 39
    .restart local p1
    :cond_3
    instance-of v0, p1, Lit/unina/androidripper/strategy/criteria/PauseCriteria;

    if-eqz v0, :cond_0

    .line 40
    check-cast p1, Lit/unina/androidripper/strategy/criteria/PauseCriteria;

    .end local p1
    invoke-virtual {p0, p1}, Lit/unina/androidripper/strategy/CustomStrategy;->addPauseCriteria(Lit/unina/androidripper/strategy/criteria/PauseCriteria;)V

    goto :goto_0
.end method

.method public addExplorationCriteria(Lit/unina/androidripper/strategy/criteria/ExplorationCriteria;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 45
    invoke-interface {p1, p0}, Lit/unina/androidripper/strategy/criteria/ExplorationCriteria;->setStrategy(Lit/unina/androidripper/model/Strategy;)V

    .line 46
    iget-object v0, p0, Lit/unina/androidripper/strategy/CustomStrategy;->explorers:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 47
    return-void
.end method

.method public addTransitionCriteria(Lit/unina/androidripper/strategy/criteria/TransitionCriteria;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 58
    invoke-interface {p1, p0}, Lit/unina/androidripper/strategy/criteria/TransitionCriteria;->setStrategy(Lit/unina/androidripper/model/Strategy;)V

    .line 59
    iget-object v0, p0, Lit/unina/androidripper/strategy/CustomStrategy;->transitioners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method public checkForTransition()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 64
    iget-object v3, p0, Lit/unina/androidripper/strategy/CustomStrategy;->transitioners:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    :goto_0
    return v2

    .line 65
    :cond_0
    iget-object v3, p0, Lit/unina/androidripper/strategy/CustomStrategy;->transitioners:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lit/unina/androidripper/strategy/criteria/TransitionCriteria;

    .line 66
    .local v1, t:Lit/unina/androidripper/strategy/criteria/TransitionCriteria;
    invoke-interface {v1}, Lit/unina/androidripper/strategy/criteria/TransitionCriteria;->transition()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 68
    .end local v1           #t:Lit/unina/androidripper/strategy/criteria/TransitionCriteria;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public explorationNeeded()Z
    .locals 3

    .prologue
    .line 51
    iget-object v2, p0, Lit/unina/androidripper/strategy/CustomStrategy;->explorers:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/unina/androidripper/strategy/criteria/ExplorationCriteria;

    .line 52
    .local v0, e:Lit/unina/androidripper/strategy/criteria/ExplorationCriteria;
    invoke-interface {v0}, Lit/unina/androidripper/strategy/criteria/ExplorationCriteria;->exploration()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 54
    .end local v0           #e:Lit/unina/androidripper/strategy/criteria/ExplorationCriteria;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method
