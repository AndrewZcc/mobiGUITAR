.class public Lit/unina/androidripper/strategy/SimpleStrategy;
.super Ljava/lang/Object;
.source "SimpleStrategy.java"

# interfaces
.implements Lit/unina/androidripper/model/Strategy;


# instance fields
.field private afterEvent:Lcom/nofatclips/androidtesting/model/ActivityState;

.field private beforeEvent:Lcom/nofatclips/androidtesting/model/ActivityState;

.field private c:Lit/unina/androidripper/model/Comparator;

.field private depth:I

.field private endListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lit/unina/androidripper/model/TerminationListener;",
            ">;"
        }
    .end annotation
.end field

.field private guiNodes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/nofatclips/androidtesting/model/ActivityState;",
            ">;"
        }
    .end annotation
.end field

.field private minDepth:I

.field protected pausers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lit/unina/androidripper/strategy/criteria/PauseCriteria;",
            ">;"
        }
    .end annotation
.end field

.field protected positiveComparation:Z

.field protected terminators:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lit/unina/androidripper/strategy/criteria/TerminationCriteria;",
            ">;"
        }
    .end annotation
.end field

.field private theListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lit/unina/androidripper/model/StateDiscoveryListener;",
            ">;"
        }
    .end annotation
.end field

.field private theTask:Lcom/nofatclips/androidtesting/model/Trace;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lit/unina/androidripper/strategy/SimpleStrategy;->guiNodes:Ljava/util/HashSet;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lit/unina/androidripper/strategy/SimpleStrategy;->terminators:Ljava/util/Collection;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lit/unina/androidripper/strategy/SimpleStrategy;->pausers:Ljava/util/Collection;

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lit/unina/androidripper/strategy/SimpleStrategy;->positiveComparation:Z

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lit/unina/androidripper/strategy/SimpleStrategy;->theListeners:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lit/unina/androidripper/strategy/SimpleStrategy;->endListeners:Ljava/util/List;

    .line 38
    return-void
.end method

.method public constructor <init>(Lit/unina/androidripper/model/Comparator;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lit/unina/androidripper/strategy/SimpleStrategy;->guiNodes:Ljava/util/HashSet;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lit/unina/androidripper/strategy/SimpleStrategy;->terminators:Ljava/util/Collection;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lit/unina/androidripper/strategy/SimpleStrategy;->pausers:Ljava/util/Collection;

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lit/unina/androidripper/strategy/SimpleStrategy;->positiveComparation:Z

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lit/unina/androidripper/strategy/SimpleStrategy;->theListeners:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lit/unina/androidripper/strategy/SimpleStrategy;->endListeners:Ljava/util/List;

    .line 42
    invoke-virtual {p0, p1}, Lit/unina/androidripper/strategy/SimpleStrategy;->setComparator(Lit/unina/androidripper/model/Comparator;)V

    .line 43
    return-void
.end method


# virtual methods
.method public addPauseCriteria(Lit/unina/androidripper/strategy/criteria/PauseCriteria;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 110
    invoke-interface {p1, p0}, Lit/unina/androidripper/strategy/criteria/PauseCriteria;->setStrategy(Lit/unina/androidripper/model/Strategy;)V

    .line 111
    iget-object v0, p0, Lit/unina/androidripper/strategy/SimpleStrategy;->pausers:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method

.method public addState(Lcom/nofatclips/androidtesting/model/ActivityState;)V
    .locals 3
    .parameter "newActivity"

    .prologue
    .line 46
    invoke-virtual {p0}, Lit/unina/androidripper/strategy/SimpleStrategy;->getListeners()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lit/unina/androidripper/model/StateDiscoveryListener;

    .line 47
    .local v1, listener:Lit/unina/androidripper/model/StateDiscoveryListener;
    invoke-interface {v1, p1}, Lit/unina/androidripper/model/StateDiscoveryListener;->onNewState(Lcom/nofatclips/androidtesting/model/ActivityState;)V

    goto :goto_0

    .line 49
    .end local v1           #listener:Lit/unina/androidripper/model/StateDiscoveryListener;
    :cond_0
    iget-object v2, p0, Lit/unina/androidripper/strategy/SimpleStrategy;->guiNodes:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method

.method public addTerminationCriteria(Lit/unina/androidripper/strategy/criteria/TerminationCriteria;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 105
    invoke-interface {p1, p0}, Lit/unina/androidripper/strategy/criteria/TerminationCriteria;->setStrategy(Lit/unina/androidripper/model/Strategy;)V

    .line 106
    iget-object v0, p0, Lit/unina/androidripper/strategy/SimpleStrategy;->terminators:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 107
    return-void
.end method

.method public final checkForExploration()Z
    .locals 2

    .prologue
    .line 123
    iget v0, p0, Lit/unina/androidripper/strategy/SimpleStrategy;->depth:I

    iget v1, p0, Lit/unina/androidripper/strategy/SimpleStrategy;->minDepth:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    .line 124
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lit/unina/androidripper/strategy/SimpleStrategy;->explorationNeeded()Z

    move-result v0

    goto :goto_0
.end method

.method public checkForPause()Z
    .locals 3

    .prologue
    .line 94
    iget-object v2, p0, Lit/unina/androidripper/strategy/SimpleStrategy;->pausers:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lit/unina/androidripper/strategy/criteria/PauseCriteria;

    .line 95
    .local v1, p:Lit/unina/androidripper/strategy/criteria/PauseCriteria;
    invoke-interface {v1}, Lit/unina/androidripper/strategy/criteria/PauseCriteria;->pause()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 97
    .end local v1           #p:Lit/unina/androidripper/strategy/criteria/PauseCriteria;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public checkForTermination()Z
    .locals 4

    .prologue
    .line 82
    iget-object v3, p0, Lit/unina/androidripper/strategy/SimpleStrategy;->terminators:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lit/unina/androidripper/strategy/criteria/TerminationCriteria;

    .line 83
    .local v1, t:Lit/unina/androidripper/strategy/criteria/TerminationCriteria;
    invoke-interface {v1}, Lit/unina/androidripper/strategy/criteria/TerminationCriteria;->termination()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    invoke-virtual {p0}, Lit/unina/androidripper/strategy/SimpleStrategy;->getEndListeners()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lit/unina/androidripper/model/TerminationListener;

    .line 85
    .local v2, tl:Lit/unina/androidripper/model/TerminationListener;
    invoke-interface {v2}, Lit/unina/androidripper/model/TerminationListener;->onTerminate()V

    goto :goto_0

    .line 87
    .end local v2           #tl:Lit/unina/androidripper/model/TerminationListener;
    :cond_1
    const/4 v3, 0x1

    .line 90
    .end local v1           #t:Lit/unina/androidripper/strategy/criteria/TerminationCriteria;
    :goto_1
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public checkForTransition()Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public compareState(Lcom/nofatclips/androidtesting/model/ActivityState;)Z
    .locals 8
    .parameter "theActivity"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    iput-object p1, p0, Lit/unina/androidripper/strategy/SimpleStrategy;->afterEvent:Lcom/nofatclips/androidtesting/model/ActivityState;

    .line 54
    iput-boolean v4, p0, Lit/unina/androidripper/strategy/SimpleStrategy;->positiveComparation:Z

    .line 55
    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/ActivityState;->getName()Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, name:Ljava/lang/String;
    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/ActivityState;->isExit()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 57
    const-string v4, "androidripper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exit state. Not performing comparation for activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    :goto_0
    return v3

    .line 61
    :cond_1
    sget-object v5, Lit/unina/androidripper/strategy/comparator/Resources;->COMPARATOR_TYPE:Ljava/lang/String;

    const-string v6, "NullComparator"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 62
    const-string v5, "androidripper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Performing comparation for activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v5, p0, Lit/unina/androidripper/strategy/SimpleStrategy;->guiNodes:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nofatclips/androidtesting/model/ActivityState;

    .line 64
    .local v2, stored:Lcom/nofatclips/androidtesting/model/ActivityState;
    const-string v5, "androidripper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Comparing against activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2}, Lcom/nofatclips/androidtesting/model/ActivityState;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {p0}, Lit/unina/androidripper/strategy/SimpleStrategy;->getComparator()Lit/unina/androidripper/model/Comparator;

    move-result-object v5

    invoke-interface {v5, p1, v2}, Lit/unina/androidripper/model/Comparator;->compare(Lcom/nofatclips/androidtesting/model/ActivityState;Lcom/nofatclips/androidtesting/model/ActivityState;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 66
    invoke-interface {v2}, Lcom/nofatclips/androidtesting/model/ActivityState;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/nofatclips/androidtesting/model/ActivityState;->setId(Ljava/lang/String;)V

    .line 67
    const-string v3, "androidripper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "This activity state is equivalent to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Lcom/nofatclips/androidtesting/model/ActivityState;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 68
    goto :goto_0

    .line 73
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #stored:Lcom/nofatclips/androidtesting/model/ActivityState;
    :cond_3
    iput-boolean v3, p0, Lit/unina/androidripper/strategy/SimpleStrategy;->positiveComparation:Z

    .line 74
    sget-object v4, Lit/unina/androidripper/strategy/comparator/Resources;->COMPARATOR_TYPE:Ljava/lang/String;

    const-string v5, "NullComparator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 75
    const-string v4, "androidripper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Registering activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/ActivityState;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") as a new found state"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {p0, p1}, Lit/unina/androidripper/strategy/SimpleStrategy;->addState(Lcom/nofatclips/androidtesting/model/ActivityState;)V

    goto/16 :goto_0
.end method

.method protected explorationNeeded()Z
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0}, Lit/unina/androidripper/strategy/SimpleStrategy;->isLastComparationPositive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getComparator()Lit/unina/androidripper/model/Comparator;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lit/unina/androidripper/strategy/SimpleStrategy;->c:Lit/unina/androidripper/model/Comparator;

    return-object v0
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lit/unina/androidripper/strategy/SimpleStrategy;->depth:I

    return v0
.end method

.method public getEndListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lit/unina/androidripper/model/TerminationListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lit/unina/androidripper/strategy/SimpleStrategy;->endListeners:Ljava/util/List;

    return-object v0
.end method

.method public getListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lit/unina/androidripper/model/StateDiscoveryListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lit/unina/androidripper/strategy/SimpleStrategy;->theListeners:Ljava/util/List;

    return-object v0
.end method

.method public getMinDepth()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lit/unina/androidripper/strategy/SimpleStrategy;->minDepth:I

    return v0
.end method

.method public getStateAfterEvent()Lcom/nofatclips/androidtesting/model/ActivityState;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lit/unina/androidripper/strategy/SimpleStrategy;->afterEvent:Lcom/nofatclips/androidtesting/model/ActivityState;

    return-object v0
.end method

.method public getStateBeforeEvent()Lcom/nofatclips/androidtesting/model/ActivityState;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lit/unina/androidripper/strategy/SimpleStrategy;->beforeEvent:Lcom/nofatclips/androidtesting/model/ActivityState;

    return-object v0
.end method

.method public getTask()Lcom/nofatclips/androidtesting/model/Trace;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lit/unina/androidripper/strategy/SimpleStrategy;->theTask:Lcom/nofatclips/androidtesting/model/Trace;

    return-object v0
.end method

.method public isLastComparationPositive()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lit/unina/androidripper/strategy/SimpleStrategy;->positiveComparation:Z

    return v0
.end method

.method public registerStateListener(Lit/unina/androidripper/model/StateDiscoveryListener;)V
    .locals 1
    .parameter "theListener"

    .prologue
    .line 175
    iget-object v0, p0, Lit/unina/androidripper/strategy/SimpleStrategy;->theListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    return-void
.end method

.method public registerTerminationListener(Lit/unina/androidripper/model/TerminationListener;)V
    .locals 1
    .parameter "theListener"

    .prologue
    .line 179
    iget-object v0, p0, Lit/unina/androidripper/strategy/SimpleStrategy;->endListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    return-void
.end method

.method public setComparator(Lit/unina/androidripper/model/Comparator;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 119
    iput-object p1, p0, Lit/unina/androidripper/strategy/SimpleStrategy;->c:Lit/unina/androidripper/model/Comparator;

    .line 120
    return-void
.end method

.method public setDepth()V
    .locals 4

    .prologue
    .line 147
    const/4 v2, 0x0

    .line 148
    .local v2, transitions:I
    invoke-virtual {p0}, Lit/unina/androidripper/strategy/SimpleStrategy;->getTask()Lcom/nofatclips/androidtesting/model/Trace;

    move-result-object v3

    invoke-interface {v3}, Lcom/nofatclips/androidtesting/model/Trace;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nofatclips/androidtesting/model/Transition;

    .line 149
    .local v1, t:Lcom/nofatclips/androidtesting/model/Transition;
    add-int/lit8 v2, v2, 0x1

    .line 150
    goto :goto_0

    .line 151
    .end local v1           #t:Lcom/nofatclips/androidtesting/model/Transition;
    :cond_0
    iput v2, p0, Lit/unina/androidripper/strategy/SimpleStrategy;->depth:I

    .line 152
    return-void
.end method

.method public setMinDepth(I)V
    .locals 0
    .parameter "minDepth"

    .prologue
    .line 187
    iput p1, p0, Lit/unina/androidripper/strategy/SimpleStrategy;->minDepth:I

    .line 188
    return-void
.end method

.method public setTask(Lcom/nofatclips/androidtesting/model/Trace;)V
    .locals 1
    .parameter "theTask"

    .prologue
    .line 136
    iput-object p1, p0, Lit/unina/androidripper/strategy/SimpleStrategy;->theTask:Lcom/nofatclips/androidtesting/model/Trace;

    .line 137
    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/Trace;->getFinalTransition()Lcom/nofatclips/androidtesting/model/Transition;

    move-result-object v0

    invoke-interface {v0}, Lcom/nofatclips/androidtesting/model/Transition;->getStartActivity()Lcom/nofatclips/androidtesting/model/ActivityState;

    move-result-object v0

    iput-object v0, p0, Lit/unina/androidripper/strategy/SimpleStrategy;->beforeEvent:Lcom/nofatclips/androidtesting/model/ActivityState;

    .line 138
    invoke-virtual {p0}, Lit/unina/androidripper/strategy/SimpleStrategy;->setDepth()V

    .line 139
    return-void
.end method
