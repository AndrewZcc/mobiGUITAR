.class public Lit/unina/androidripper/strategy/StrategyFactory;
.super Ljava/lang/Object;
.source "StrategyFactory.java"


# instance fields
.field private checkTransistions:Z

.field private comparator:Lit/unina/androidripper/model/Comparator;

.field private exploreNewStatesOnly:Z

.field private maxSeconds:J

.field private maxTraces:I

.field private maxTransitions:I

.field private minTransitions:I

.field private otherCriterias:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lit/unina/androidripper/model/StrategyCriteria;",
            ">;"
        }
    .end annotation
.end field

.field private pauseSeconds:J

.field private pauseTraces:I

.field private stopEvents:[Ljava/lang/String;

.field private stopWidgets:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v0, p0, Lit/unina/androidripper/strategy/StrategyFactory;->maxTraces:I

    .line 23
    iput v0, p0, Lit/unina/androidripper/strategy/StrategyFactory;->maxTransitions:I

    .line 24
    iput v0, p0, Lit/unina/androidripper/strategy/StrategyFactory;->minTransitions:I

    .line 25
    iput-wide v1, p0, Lit/unina/androidripper/strategy/StrategyFactory;->maxSeconds:J

    .line 26
    iput-wide v1, p0, Lit/unina/androidripper/strategy/StrategyFactory;->pauseSeconds:J

    .line 27
    iput-boolean v0, p0, Lit/unina/androidripper/strategy/StrategyFactory;->checkTransistions:Z

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lit/unina/androidripper/strategy/StrategyFactory;->exploreNewStatesOnly:Z

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lit/unina/androidripper/strategy/StrategyFactory;->otherCriterias:Ljava/util/ArrayList;

    .line 34
    return-void
.end method

.method public constructor <init>(Lit/unina/androidripper/model/Comparator;)V
    .locals 3
    .parameter "c"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v0, p0, Lit/unina/androidripper/strategy/StrategyFactory;->maxTraces:I

    .line 23
    iput v0, p0, Lit/unina/androidripper/strategy/StrategyFactory;->maxTransitions:I

    .line 24
    iput v0, p0, Lit/unina/androidripper/strategy/StrategyFactory;->minTransitions:I

    .line 25
    iput-wide v1, p0, Lit/unina/androidripper/strategy/StrategyFactory;->maxSeconds:J

    .line 26
    iput-wide v1, p0, Lit/unina/androidripper/strategy/StrategyFactory;->pauseSeconds:J

    .line 27
    iput-boolean v0, p0, Lit/unina/androidripper/strategy/StrategyFactory;->checkTransistions:Z

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lit/unina/androidripper/strategy/StrategyFactory;->exploreNewStatesOnly:Z

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lit/unina/androidripper/strategy/StrategyFactory;->otherCriterias:Ljava/util/ArrayList;

    .line 37
    invoke-virtual {p0, p1}, Lit/unina/androidripper/strategy/StrategyFactory;->setComparator(Lit/unina/androidripper/model/Comparator;)V

    .line 38
    return-void
.end method

.method public varargs constructor <init>(Lit/unina/androidripper/model/Comparator;[Lit/unina/androidripper/model/StrategyCriteria;)V
    .locals 0
    .parameter "c"
    .parameter "criterias"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lit/unina/androidripper/strategy/StrategyFactory;-><init>(Lit/unina/androidripper/model/Comparator;)V

    .line 42
    invoke-virtual {p0, p2}, Lit/unina/androidripper/strategy/StrategyFactory;->setMoreCriterias([Lit/unina/androidripper/model/StrategyCriteria;)V

    .line 43
    return-void
.end method


# virtual methods
.method public checkForDepth()Z
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lit/unina/androidripper/strategy/StrategyFactory;->maxTransitions:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkForEvents()Z
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0}, Lit/unina/androidripper/strategy/StrategyFactory;->getStopEvents()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkForWidgets()Z
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lit/unina/androidripper/strategy/StrategyFactory;->getStopWidgets()[I

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkMaxTraces()Z
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lit/unina/androidripper/strategy/StrategyFactory;->maxTraces:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkSessionTime()Z
    .locals 4

    .prologue
    .line 118
    iget-wide v0, p0, Lit/unina/androidripper/strategy/StrategyFactory;->maxSeconds:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkSessionTimeForPause()Z
    .locals 4

    .prologue
    .line 122
    iget-wide v0, p0, Lit/unina/androidripper/strategy/StrategyFactory;->pauseSeconds:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkTracesForPause()Z
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lit/unina/androidripper/strategy/StrategyFactory;->pauseTraces:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkTransition()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lit/unina/androidripper/strategy/StrategyFactory;->checkTransistions:Z

    return v0
.end method

.method public exploreNewStatesOnly()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lit/unina/androidripper/strategy/StrategyFactory;->exploreNewStatesOnly:Z

    return v0
.end method

.method public getStopEvents()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lit/unina/androidripper/strategy/StrategyFactory;->stopEvents:[Ljava/lang/String;

    return-object v0
.end method

.method public getStopWidgets()[I
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lit/unina/androidripper/strategy/StrategyFactory;->stopWidgets:[I

    return-object v0
.end method

.method public getStrategy()Lit/unina/androidripper/model/Strategy;
    .locals 5

    .prologue
    .line 50
    invoke-virtual {p0}, Lit/unina/androidripper/strategy/StrategyFactory;->useCustomStrategy()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 52
    iget-object v2, p0, Lit/unina/androidripper/strategy/StrategyFactory;->otherCriterias:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Lit/unina/androidripper/model/StrategyCriteria;

    .line 53
    .local v0, c:[Lit/unina/androidripper/model/StrategyCriteria;
    new-instance v1, Lit/unina/androidripper/strategy/CustomStrategy;

    iget-object v3, p0, Lit/unina/androidripper/strategy/StrategyFactory;->comparator:Lit/unina/androidripper/model/Comparator;

    iget-object v2, p0, Lit/unina/androidripper/strategy/StrategyFactory;->otherCriterias:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lit/unina/androidripper/model/StrategyCriteria;

    invoke-direct {v1, v3, v2}, Lit/unina/androidripper/strategy/CustomStrategy;-><init>(Lit/unina/androidripper/model/Comparator;[Lit/unina/androidripper/model/StrategyCriteria;)V

    .line 54
    .local v1, s:Lit/unina/androidripper/strategy/CustomStrategy;
    invoke-virtual {p0}, Lit/unina/androidripper/strategy/StrategyFactory;->exploreNewStatesOnly()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    new-instance v2, Lit/unina/androidripper/strategy/criteria/NewActivityExplore;

    invoke-direct {v2}, Lit/unina/androidripper/strategy/criteria/NewActivityExplore;-><init>()V

    invoke-virtual {v1, v2}, Lit/unina/androidripper/strategy/CustomStrategy;->addCriteria(Lit/unina/androidripper/model/StrategyCriteria;)V

    .line 57
    :cond_0
    invoke-virtual {p0}, Lit/unina/androidripper/strategy/StrategyFactory;->checkMaxTraces()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    new-instance v2, Lit/unina/androidripper/strategy/criteria/MaxStepsTermination;

    iget v3, p0, Lit/unina/androidripper/strategy/StrategyFactory;->maxTraces:I

    invoke-direct {v2, v3}, Lit/unina/androidripper/strategy/criteria/MaxStepsTermination;-><init>(I)V

    invoke-virtual {v1, v2}, Lit/unina/androidripper/strategy/CustomStrategy;->addCriteria(Lit/unina/androidripper/model/StrategyCriteria;)V

    .line 60
    :cond_1
    invoke-virtual {p0}, Lit/unina/androidripper/strategy/StrategyFactory;->checkForDepth()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 61
    new-instance v2, Lit/unina/androidripper/strategy/criteria/MaxDepthExplore;

    iget v3, p0, Lit/unina/androidripper/strategy/StrategyFactory;->maxTransitions:I

    invoke-direct {v2, v3}, Lit/unina/androidripper/strategy/criteria/MaxDepthExplore;-><init>(I)V

    invoke-virtual {v1, v2}, Lit/unina/androidripper/strategy/CustomStrategy;->addCriteria(Lit/unina/androidripper/model/StrategyCriteria;)V

    .line 63
    :cond_2
    invoke-virtual {p0}, Lit/unina/androidripper/strategy/StrategyFactory;->checkTransition()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 64
    new-instance v2, Lit/unina/androidripper/strategy/criteria/NewActivityTransition;

    invoke-direct {v2}, Lit/unina/androidripper/strategy/criteria/NewActivityTransition;-><init>()V

    invoke-virtual {v1, v2}, Lit/unina/androidripper/strategy/CustomStrategy;->addCriteria(Lit/unina/androidripper/model/StrategyCriteria;)V

    .line 66
    :cond_3
    invoke-virtual {p0}, Lit/unina/androidripper/strategy/StrategyFactory;->checkSessionTime()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 67
    new-instance v2, Lit/unina/androidripper/strategy/criteria/TimeElapsedTermination;

    iget-wide v3, p0, Lit/unina/androidripper/strategy/StrategyFactory;->maxSeconds:J

    invoke-direct {v2, v3, v4}, Lit/unina/androidripper/strategy/criteria/TimeElapsedTermination;-><init>(J)V

    invoke-virtual {v1, v2}, Lit/unina/androidripper/strategy/CustomStrategy;->addCriteria(Lit/unina/androidripper/model/StrategyCriteria;)V

    .line 69
    :cond_4
    invoke-virtual {p0}, Lit/unina/androidripper/strategy/StrategyFactory;->checkSessionTimeForPause()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 70
    new-instance v2, Lit/unina/androidripper/strategy/criteria/TimeElapsedPause;

    iget-wide v3, p0, Lit/unina/androidripper/strategy/StrategyFactory;->pauseSeconds:J

    invoke-direct {v2, v3, v4}, Lit/unina/androidripper/strategy/criteria/TimeElapsedPause;-><init>(J)V

    invoke-virtual {v1, v2}, Lit/unina/androidripper/strategy/CustomStrategy;->addCriteria(Lit/unina/androidripper/model/StrategyCriteria;)V

    .line 72
    :cond_5
    invoke-virtual {p0}, Lit/unina/androidripper/strategy/StrategyFactory;->checkTracesForPause()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 73
    new-instance v2, Lit/unina/androidripper/strategy/criteria/MaxStepsPause;

    iget v3, p0, Lit/unina/androidripper/strategy/StrategyFactory;->pauseTraces:I

    invoke-direct {v2, v3}, Lit/unina/androidripper/strategy/criteria/MaxStepsPause;-><init>(I)V

    invoke-virtual {v1, v2}, Lit/unina/androidripper/strategy/CustomStrategy;->addCriteria(Lit/unina/androidripper/model/StrategyCriteria;)V

    .line 75
    :cond_6
    invoke-virtual {p0}, Lit/unina/androidripper/strategy/StrategyFactory;->checkForEvents()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 76
    new-instance v2, Lit/unina/androidripper/strategy/criteria/AfterEventDontExplore;

    invoke-virtual {p0}, Lit/unina/androidripper/strategy/StrategyFactory;->getStopEvents()[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lit/unina/androidripper/strategy/criteria/AfterEventDontExplore;-><init>([Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lit/unina/androidripper/strategy/CustomStrategy;->addCriteria(Lit/unina/androidripper/model/StrategyCriteria;)V

    .line 78
    :cond_7
    invoke-virtual {p0}, Lit/unina/androidripper/strategy/StrategyFactory;->checkForWidgets()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 79
    new-instance v2, Lit/unina/androidripper/strategy/criteria/AfterWidgetDontExplore;

    invoke-virtual {p0}, Lit/unina/androidripper/strategy/StrategyFactory;->getStopWidgets()[I

    move-result-object v3

    invoke-direct {v2, v3}, Lit/unina/androidripper/strategy/criteria/AfterWidgetDontExplore;-><init>([I)V

    invoke-virtual {v1, v2}, Lit/unina/androidripper/strategy/CustomStrategy;->addCriteria(Lit/unina/androidripper/model/StrategyCriteria;)V

    .line 81
    :cond_8
    iget v2, p0, Lit/unina/androidripper/strategy/StrategyFactory;->minTransitions:I

    invoke-virtual {v1, v2}, Lit/unina/androidripper/strategy/CustomStrategy;->setMinDepth(I)V

    .line 89
    .end local v0           #c:[Lit/unina/androidripper/model/StrategyCriteria;
    .end local v1           #s:Lit/unina/androidripper/strategy/CustomStrategy;
    :goto_0
    return-object v1

    .line 84
    :cond_9
    new-instance v1, Lit/unina/androidripper/strategy/SimpleStrategy;

    iget-object v2, p0, Lit/unina/androidripper/strategy/StrategyFactory;->comparator:Lit/unina/androidripper/model/Comparator;

    invoke-direct {v1, v2}, Lit/unina/androidripper/strategy/SimpleStrategy;-><init>(Lit/unina/androidripper/model/Comparator;)V

    .line 85
    .local v1, s:Lit/unina/androidripper/strategy/SimpleStrategy;
    invoke-virtual {p0}, Lit/unina/androidripper/strategy/StrategyFactory;->checkMaxTraces()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 86
    new-instance v2, Lit/unina/androidripper/strategy/criteria/MaxStepsTermination;

    iget v3, p0, Lit/unina/androidripper/strategy/StrategyFactory;->maxTraces:I

    invoke-direct {v2, v3}, Lit/unina/androidripper/strategy/criteria/MaxStepsTermination;-><init>(I)V

    invoke-virtual {v1, v2}, Lit/unina/androidripper/strategy/SimpleStrategy;->addTerminationCriteria(Lit/unina/androidripper/strategy/criteria/TerminationCriteria;)V

    .line 88
    :cond_a
    iget v2, p0, Lit/unina/androidripper/strategy/StrategyFactory;->minTransitions:I

    invoke-virtual {v1, v2}, Lit/unina/androidripper/strategy/SimpleStrategy;->setMinDepth(I)V

    goto :goto_0
.end method

.method public hasMoreCriterias()Z
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lit/unina/androidripper/strategy/StrategyFactory;->otherCriterias:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCheckTransitions(Z)V
    .locals 0
    .parameter "check"

    .prologue
    .line 150
    iput-boolean p1, p0, Lit/unina/androidripper/strategy/StrategyFactory;->checkTransistions:Z

    .line 151
    return-void
.end method

.method public setComparator(Lit/unina/androidripper/model/Comparator;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 46
    iput-object p1, p0, Lit/unina/androidripper/strategy/StrategyFactory;->comparator:Lit/unina/androidripper/model/Comparator;

    .line 47
    return-void
.end method

.method public setDepth(I)V
    .locals 0
    .parameter "depth"

    .prologue
    .line 138
    iput p1, p0, Lit/unina/androidripper/strategy/StrategyFactory;->maxTransitions:I

    .line 139
    return-void
.end method

.method public setExploreNewOnly(Z)V
    .locals 0
    .parameter "newOnly"

    .prologue
    .line 154
    iput-boolean p1, p0, Lit/unina/androidripper/strategy/StrategyFactory;->exploreNewStatesOnly:Z

    .line 155
    return-void
.end method

.method public setMaxSeconds(J)V
    .locals 0
    .parameter "max"

    .prologue
    .line 158
    iput-wide p1, p0, Lit/unina/androidripper/strategy/StrategyFactory;->maxSeconds:J

    .line 159
    return-void
.end method

.method public setMaxTraces(I)V
    .locals 0
    .parameter "length"

    .prologue
    .line 146
    iput p1, p0, Lit/unina/androidripper/strategy/StrategyFactory;->maxTraces:I

    .line 147
    return-void
.end method

.method public setMinDepth(I)V
    .locals 0
    .parameter "depth"

    .prologue
    .line 142
    iput p1, p0, Lit/unina/androidripper/strategy/StrategyFactory;->minTransitions:I

    .line 143
    return-void
.end method

.method public varargs setMoreCriterias([Lit/unina/androidripper/model/StrategyCriteria;)V
    .locals 5
    .parameter "s"

    .prologue
    .line 166
    move-object v0, p1

    .local v0, arr$:[Lit/unina/androidripper/model/StrategyCriteria;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 167
    .local v3, sc:Lit/unina/androidripper/model/StrategyCriteria;
    iget-object v4, p0, Lit/unina/androidripper/strategy/StrategyFactory;->otherCriterias:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    .end local v3           #sc:Lit/unina/androidripper/model/StrategyCriteria;
    :cond_0
    return-void
.end method

.method public setPauseSeconds(J)V
    .locals 0
    .parameter "span"

    .prologue
    .line 162
    iput-wide p1, p0, Lit/unina/androidripper/strategy/StrategyFactory;->pauseSeconds:J

    .line 163
    return-void
.end method

.method public setPauseTraces(I)V
    .locals 0
    .parameter "pauseAfterTraces"

    .prologue
    .line 172
    iput p1, p0, Lit/unina/androidripper/strategy/StrategyFactory;->pauseTraces:I

    .line 173
    return-void
.end method

.method public varargs setStopEvents([Ljava/lang/String;)V
    .locals 0
    .parameter "stopEvents"

    .prologue
    .line 180
    iput-object p1, p0, Lit/unina/androidripper/strategy/StrategyFactory;->stopEvents:[Ljava/lang/String;

    .line 181
    return-void
.end method

.method public varargs setStopWidgets([I)V
    .locals 0
    .parameter "stopWidgets"

    .prologue
    .line 188
    iput-object p1, p0, Lit/unina/androidripper/strategy/StrategyFactory;->stopWidgets:[I

    .line 189
    return-void
.end method

.method public useCustomStrategy()Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x1

    return v0
.end method
