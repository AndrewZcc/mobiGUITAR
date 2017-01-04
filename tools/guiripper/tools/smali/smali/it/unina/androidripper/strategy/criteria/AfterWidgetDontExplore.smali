.class public Lit/unina/androidripper/strategy/criteria/AfterWidgetDontExplore;
.super Ljava/lang/Object;
.source "AfterWidgetDontExplore.java"

# interfaces
.implements Lit/unina/androidripper/strategy/criteria/ExplorationCriteria;


# instance fields
.field private forbiddenWidgets:[Ljava/lang/String;

.field private theStrategy:Lit/unina/androidripper/model/Strategy;


# direct methods
.method public varargs constructor <init>([I)V
    .locals 3
    .parameter "forbiddenWidgets"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    array-length v2, p1

    new-array v0, v2, [Ljava/lang/String;

    .line 14
    .local v0, ids:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, n:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 15
    aget v2, p1, v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 14
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 17
    :cond_0
    iput-object v0, p0, Lit/unina/androidripper/strategy/criteria/AfterWidgetDontExplore;->forbiddenWidgets:[Ljava/lang/String;

    .line 18
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 0
    .parameter "forbiddenWidgets"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lit/unina/androidripper/strategy/criteria/AfterWidgetDontExplore;->forbiddenWidgets:[Ljava/lang/String;

    .line 22
    return-void
.end method

.method private checkWidgetId()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    .line 33
    iget-object v6, p0, Lit/unina/androidripper/strategy/criteria/AfterWidgetDontExplore;->theStrategy:Lit/unina/androidripper/model/Strategy;

    invoke-interface {v6}, Lit/unina/androidripper/model/Strategy;->getTask()Lcom/nofatclips/androidtesting/model/Trace;

    move-result-object v6

    invoke-interface {v6}, Lcom/nofatclips/androidtesting/model/Trace;->getFinalTransition()Lcom/nofatclips/androidtesting/model/Transition;

    move-result-object v6

    invoke-interface {v6}, Lcom/nofatclips/androidtesting/model/Transition;->getEvent()Lcom/nofatclips/androidtesting/model/UserEvent;

    move-result-object v6

    invoke-interface {v6}, Lcom/nofatclips/androidtesting/model/UserEvent;->getWidgetId()Ljava/lang/String;

    move-result-object v4

    .line 34
    .local v4, widgetId:Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 39
    :cond_0
    :goto_0
    return v5

    .line 35
    :cond_1
    const-string v6, "androidripper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Checking for exploration: event widget id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v0, p0, Lit/unina/androidripper/strategy/criteria/AfterWidgetDontExplore;->forbiddenWidgets:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 37
    .local v2, id:Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v5, 0x0

    goto :goto_0

    .line 36
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public exploration()Z
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lit/unina/androidripper/strategy/criteria/AfterWidgetDontExplore;->checkWidgetId()Z

    move-result v0

    return v0
.end method

.method public setStrategy(Lit/unina/androidripper/model/Strategy;)V
    .locals 0
    .parameter "theStrategy"

    .prologue
    .line 25
    iput-object p1, p0, Lit/unina/androidripper/strategy/criteria/AfterWidgetDontExplore;->theStrategy:Lit/unina/androidripper/model/Strategy;

    .line 26
    return-void
.end method
