.class public Lit/unina/androidripper/strategy/criteria/AfterEventDontExplore;
.super Ljava/lang/Object;
.source "AfterEventDontExplore.java"

# interfaces
.implements Lit/unina/androidripper/strategy/criteria/ExplorationCriteria;


# instance fields
.field private forbiddenDescriptions:[Ljava/lang/String;

.field private theStrategy:Lit/unina/androidripper/model/Strategy;


# direct methods
.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 0
    .parameter "forbiddenDescriptions"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lit/unina/androidripper/strategy/criteria/AfterEventDontExplore;->forbiddenDescriptions:[Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public checkDescription()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    .line 25
    iget-object v6, p0, Lit/unina/androidripper/strategy/criteria/AfterEventDontExplore;->theStrategy:Lit/unina/androidripper/model/Strategy;

    invoke-interface {v6}, Lit/unina/androidripper/model/Strategy;->getTask()Lcom/nofatclips/androidtesting/model/Trace;

    move-result-object v6

    invoke-interface {v6}, Lcom/nofatclips/androidtesting/model/Trace;->getFinalTransition()Lcom/nofatclips/androidtesting/model/Transition;

    move-result-object v6

    invoke-interface {v6}, Lcom/nofatclips/androidtesting/model/Transition;->getEvent()Lcom/nofatclips/androidtesting/model/UserEvent;

    move-result-object v6

    invoke-interface {v6}, Lcom/nofatclips/androidtesting/model/UserEvent;->getDescription()Ljava/lang/String;

    move-result-object v2

    .line 26
    .local v2, eventDescription:Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 31
    :cond_0
    :goto_0
    return v5

    .line 27
    :cond_1
    const-string v6, "androidripper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Checking for exploration: event description = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object v0, p0, Lit/unina/androidripper/strategy/criteria/AfterEventDontExplore;->forbiddenDescriptions:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 29
    .local v1, desc:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v5, 0x0

    goto :goto_0

    .line 28
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public checkWidgetName()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    .line 35
    iget-object v6, p0, Lit/unina/androidripper/strategy/criteria/AfterEventDontExplore;->theStrategy:Lit/unina/androidripper/model/Strategy;

    invoke-interface {v6}, Lit/unina/androidripper/model/Strategy;->getTask()Lcom/nofatclips/androidtesting/model/Trace;

    move-result-object v6

    invoke-interface {v6}, Lcom/nofatclips/androidtesting/model/Trace;->getFinalTransition()Lcom/nofatclips/androidtesting/model/Transition;

    move-result-object v6

    invoke-interface {v6}, Lcom/nofatclips/androidtesting/model/Transition;->getEvent()Lcom/nofatclips/androidtesting/model/UserEvent;

    move-result-object v6

    invoke-interface {v6}, Lcom/nofatclips/androidtesting/model/UserEvent;->getWidgetName()Ljava/lang/String;

    move-result-object v4

    .line 36
    .local v4, widgetDescription:Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 41
    :cond_0
    :goto_0
    return v5

    .line 37
    :cond_1
    const-string v6, "androidripper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Checking for exploration: event widget name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object v0, p0, Lit/unina/androidripper/strategy/criteria/AfterEventDontExplore;->forbiddenDescriptions:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 39
    .local v1, desc:Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v5, 0x0

    goto :goto_0

    .line 38
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public exploration()Z
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lit/unina/androidripper/strategy/criteria/AfterEventDontExplore;->checkDescription()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lit/unina/androidripper/strategy/criteria/AfterEventDontExplore;->checkWidgetName()Z

    move-result v0

    if-eqz v0, :cond_0

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
    .line 17
    iput-object p1, p0, Lit/unina/androidripper/strategy/criteria/AfterEventDontExplore;->theStrategy:Lit/unina/androidripper/model/Strategy;

    .line 18
    return-void
.end method
