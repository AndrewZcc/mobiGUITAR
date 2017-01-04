.class public abstract Lit/unina/androidripper/planning/adapters/InteractorAdapter;
.super Ljava/lang/Object;
.source "InteractorAdapter.java"

# interfaces
.implements Lit/unina/androidripper/model/Interactor;


# instance fields
.field private eventWhenNoId:Z

.field private forceId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private theAbstractor:Lit/unina/androidripper/model/Abstractor;

.field private vetoId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected widgetClasses:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Lit/unina/androidripper/model/Abstractor;[Ljava/lang/String;)V
    .locals 0
    .parameter "theAbstractor"
    .parameter "simpleTypes"

    .prologue
    .line 32
    invoke-direct {p0, p2}, Lit/unina/androidripper/planning/adapters/InteractorAdapter;-><init>([Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0, p1}, Lit/unina/androidripper/planning/adapters/InteractorAdapter;->setAbstractor(Lit/unina/androidripper/model/Abstractor;)V

    .line 34
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 5
    .parameter "simpleTypes"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lit/unina/androidripper/planning/adapters/InteractorAdapter;->widgetClasses:Ljava/util/HashSet;

    .line 21
    const/4 v4, 0x0

    iput-boolean v4, p0, Lit/unina/androidripper/planning/adapters/InteractorAdapter;->eventWhenNoId:Z

    .line 26
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 27
    .local v3, s:Ljava/lang/String;
    iget-object v4, p0, Lit/unina/androidripper/planning/adapters/InteractorAdapter;->widgetClasses:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 26
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 29
    .end local v3           #s:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public canUseWidget(Lcom/nofatclips/androidtesting/model/WidgetState;)Z
    .locals 3
    .parameter "w"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 61
    invoke-virtual {p0, p1}, Lit/unina/androidripper/planning/adapters/InteractorAdapter;->cannotIdentifyWidget(Lcom/nofatclips/androidtesting/model/WidgetState;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, p1}, Lit/unina/androidripper/planning/adapters/InteractorAdapter;->isVetoedWidget(Lcom/nofatclips/androidtesting/model/WidgetState;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 63
    :cond_1
    :goto_0
    return v0

    .line 62
    :cond_2
    invoke-virtual {p0, p1}, Lit/unina/androidripper/planning/adapters/InteractorAdapter;->isForcedWidget(Lcom/nofatclips/androidtesting/model/WidgetState;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 63
    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/WidgetState;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/WidgetState;->getSimpleType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lit/unina/androidripper/planning/adapters/InteractorAdapter;->matchClass(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public cannotIdentifyWidget(Lcom/nofatclips/androidtesting/model/WidgetState;)Z
    .locals 2
    .parameter "w"

    .prologue
    .line 37
    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/WidgetState;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lit/unina/androidripper/planning/adapters/InteractorAdapter;->doEventWhenNoId()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/WidgetState;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected createEvent(Lcom/nofatclips/androidtesting/model/WidgetState;)Lcom/nofatclips/androidtesting/model/UserEvent;
    .locals 2
    .parameter "w"

    .prologue
    .line 109
    invoke-virtual {p0}, Lit/unina/androidripper/planning/adapters/InteractorAdapter;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v0

    invoke-virtual {p0}, Lit/unina/androidripper/planning/adapters/InteractorAdapter;->getInteractionType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lit/unina/androidripper/model/Abstractor;->createEvent(Lcom/nofatclips/androidtesting/model/WidgetState;Ljava/lang/String;)Lcom/nofatclips/androidtesting/model/UserEvent;

    move-result-object v0

    return-object v0
.end method

.method public denyIds(Ljava/util/Collection;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p1, ids:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v0, "androidripper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added veto for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {p0}, Lit/unina/androidripper/planning/adapters/InteractorAdapter;->getVetoedIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 180
    return-void
.end method

.method public varargs denyIds([Ljava/lang/String;)V
    .locals 5
    .parameter "ids"

    .prologue
    .line 172
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 173
    .local v2, id:Ljava/lang/String;
    invoke-virtual {p0}, Lit/unina/androidripper/planning/adapters/InteractorAdapter;->getVetoedIds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    .end local v2           #id:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public doEventWhenNoId()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lit/unina/androidripper/planning/adapters/InteractorAdapter;->eventWhenNoId:Z

    return v0
.end method

.method public forceIds(Ljava/util/Collection;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, ids:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v0, "androidripper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added override for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {p0}, Lit/unina/androidripper/planning/adapters/InteractorAdapter;->getForcedIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 185
    return-void
.end method

.method protected generateEvent(Lcom/nofatclips/androidtesting/model/WidgetState;)Lcom/nofatclips/androidtesting/model/UserEvent;
    .locals 1
    .parameter "w"

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lit/unina/androidripper/planning/adapters/InteractorAdapter;->createEvent(Lcom/nofatclips/androidtesting/model/WidgetState;)Lcom/nofatclips/androidtesting/model/UserEvent;

    move-result-object v0

    return-object v0
.end method

.method protected generateEvent(Lcom/nofatclips/androidtesting/model/WidgetState;Ljava/lang/String;)Lcom/nofatclips/androidtesting/model/UserEvent;
    .locals 1
    .parameter "w"
    .parameter "value"

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lit/unina/androidripper/planning/adapters/InteractorAdapter;->createEvent(Lcom/nofatclips/androidtesting/model/WidgetState;)Lcom/nofatclips/androidtesting/model/UserEvent;

    move-result-object v0

    .line 122
    .local v0, event:Lcom/nofatclips/androidtesting/model/UserEvent;
    invoke-interface {v0, p2}, Lcom/nofatclips/androidtesting/model/UserEvent;->setValue(Ljava/lang/String;)V

    .line 123
    return-object v0
.end method

.method protected generateInput(Lcom/nofatclips/androidtesting/model/WidgetState;)Lcom/nofatclips/androidtesting/model/UserInput;
    .locals 1
    .parameter "w"

    .prologue
    .line 117
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lit/unina/androidripper/planning/adapters/InteractorAdapter;->generateInput(Lcom/nofatclips/androidtesting/model/WidgetState;Ljava/lang/String;)Lcom/nofatclips/androidtesting/model/UserInput;

    move-result-object v0

    return-object v0
.end method

.method protected generateInput(Lcom/nofatclips/androidtesting/model/WidgetState;Ljava/lang/String;)Lcom/nofatclips/androidtesting/model/UserInput;
    .locals 2
    .parameter "w"
    .parameter "value"

    .prologue
    .line 127
    invoke-virtual {p0}, Lit/unina/androidripper/planning/adapters/InteractorAdapter;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v0

    invoke-virtual {p0}, Lit/unina/androidripper/planning/adapters/InteractorAdapter;->getInteractionType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lit/unina/androidripper/model/Abstractor;->createInput(Lcom/nofatclips/androidtesting/model/WidgetState;Ljava/lang/String;Ljava/lang/String;)Lcom/nofatclips/androidtesting/model/UserInput;

    move-result-object v0

    return-object v0
.end method

.method public getAbstractor()Lit/unina/androidripper/model/Abstractor;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lit/unina/androidripper/planning/adapters/InteractorAdapter;->theAbstractor:Lit/unina/androidripper/model/Abstractor;

    return-object v0
.end method

.method public getEvents(Lcom/nofatclips/androidtesting/model/WidgetState;)Ljava/util/List;
    .locals 4
    .parameter "w"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nofatclips/androidtesting/model/WidgetState;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/nofatclips/androidtesting/model/UserEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v0, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nofatclips/androidtesting/model/UserEvent;>;"
    invoke-virtual {p0, p1}, Lit/unina/androidripper/planning/adapters/InteractorAdapter;->canUseWidget(Lcom/nofatclips/androidtesting/model/WidgetState;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    const-string v1, "androidripper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handling event \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lit/unina/androidripper/planning/adapters/InteractorAdapter;->getInteractionType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' on widget id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/WidgetState;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/WidgetState;->getSimpleType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/WidgetState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p0, p1}, Lit/unina/androidripper/planning/adapters/InteractorAdapter;->generateEvent(Lcom/nofatclips/androidtesting/model/WidgetState;)Lcom/nofatclips/androidtesting/model/UserEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_0
    return-object v0
.end method

.method public varargs getEvents(Lcom/nofatclips/androidtesting/model/WidgetState;[Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .parameter "w"
    .parameter "values"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nofatclips/androidtesting/model/WidgetState;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/nofatclips/androidtesting/model/UserEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v1, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nofatclips/androidtesting/model/UserEvent;>;"
    invoke-virtual {p0, p1}, Lit/unina/androidripper/planning/adapters/InteractorAdapter;->canUseWidget(Lcom/nofatclips/androidtesting/model/WidgetState;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 87
    const-string v5, "androidripper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Handling event \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lit/unina/androidripper/planning/adapters/InteractorAdapter;->getInteractionType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' on widget id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/WidgetState;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/WidgetState;->getSimpleType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/WidgetState;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 89
    .local v4, value:Ljava/lang/String;
    const-string v5, "androidripper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Using value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p0, p1, v4}, Lit/unina/androidripper/planning/adapters/InteractorAdapter;->generateEvent(Lcom/nofatclips/androidtesting/model/WidgetState;Ljava/lang/String;)Lcom/nofatclips/androidtesting/model/UserEvent;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #value:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public getForcedIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lit/unina/androidripper/planning/adapters/InteractorAdapter;->forceId:Ljava/util/List;

    instance-of v0, v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lit/unina/androidripper/planning/adapters/InteractorAdapter;->forceId:Ljava/util/List;

    .line 168
    :goto_0
    return-object v0

    .line 167
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lit/unina/androidripper/planning/adapters/InteractorAdapter;->forceId:Ljava/util/List;

    .line 168
    iget-object v0, p0, Lit/unina/androidripper/planning/adapters/InteractorAdapter;->forceId:Ljava/util/List;

    goto :goto_0
.end method

.method public getInputs(Lcom/nofatclips/androidtesting/model/WidgetState;)Ljava/util/List;
    .locals 4
    .parameter "w"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nofatclips/androidtesting/model/WidgetState;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/nofatclips/androidtesting/model/UserInput;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v0, inputs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nofatclips/androidtesting/model/UserInput;>;"
    invoke-virtual {p0, p1}, Lit/unina/androidripper/planning/adapters/InteractorAdapter;->canUseWidget(Lcom/nofatclips/androidtesting/model/WidgetState;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    const-string v1, "androidripper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handling input \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lit/unina/androidripper/planning/adapters/InteractorAdapter;->getInteractionType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' on widget id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/WidgetState;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/WidgetState;->getSimpleType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/WidgetState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p0, p1}, Lit/unina/androidripper/planning/adapters/InteractorAdapter;->generateInput(Lcom/nofatclips/androidtesting/model/WidgetState;)Lcom/nofatclips/androidtesting/model/UserInput;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_0
    return-object v0
.end method

.method public varargs getInputs(Lcom/nofatclips/androidtesting/model/WidgetState;[Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .parameter "w"
    .parameter "values"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nofatclips/androidtesting/model/WidgetState;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/nofatclips/androidtesting/model/UserInput;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v2, inputs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nofatclips/androidtesting/model/UserInput;>;"
    invoke-virtual {p0, p1}, Lit/unina/androidripper/planning/adapters/InteractorAdapter;->canUseWidget(Lcom/nofatclips/androidtesting/model/WidgetState;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 99
    const-string v5, "androidripper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Handling input \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lit/unina/androidripper/planning/adapters/InteractorAdapter;->getInteractionType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' on widget id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/WidgetState;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/WidgetState;->getSimpleType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/WidgetState;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 101
    .local v4, value:Ljava/lang/String;
    const-string v5, "androidripper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Using value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p0, p1, v4}, Lit/unina/androidripper/planning/adapters/InteractorAdapter;->generateInput(Lcom/nofatclips/androidtesting/model/WidgetState;Ljava/lang/String;)Lcom/nofatclips/androidtesting/model/UserInput;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v4           #value:Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method public abstract getInteractionType()Ljava/lang/String;
.end method

.method public getVetoedIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lit/unina/androidripper/planning/adapters/InteractorAdapter;->vetoId:Ljava/util/List;

    instance-of v0, v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lit/unina/androidripper/planning/adapters/InteractorAdapter;->vetoId:Ljava/util/List;

    .line 160
    :goto_0
    return-object v0

    .line 159
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lit/unina/androidripper/planning/adapters/InteractorAdapter;->vetoId:Ljava/util/List;

    .line 160
    iget-object v0, p0, Lit/unina/androidripper/planning/adapters/InteractorAdapter;->vetoId:Ljava/util/List;

    goto :goto_0
.end method

.method public isForcedWidget(Lcom/nofatclips/androidtesting/model/WidgetState;)Z
    .locals 5
    .parameter "w"

    .prologue
    .line 51
    invoke-virtual {p0}, Lit/unina/androidripper/planning/adapters/InteractorAdapter;->getForcedIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 52
    .local v1, id:Ljava/lang/String;
    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/WidgetState;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    const-string v2, "androidripper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Event forced for widget #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 v2, 0x1

    .line 57
    .end local v1           #id:Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isVetoedWidget(Lcom/nofatclips/androidtesting/model/WidgetState;)Z
    .locals 5
    .parameter "w"

    .prologue
    .line 41
    invoke-virtual {p0}, Lit/unina/androidripper/planning/adapters/InteractorAdapter;->getVetoedIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 42
    .local v1, id:Ljava/lang/String;
    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/WidgetState;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    const-string v2, "androidripper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Event denied for widget #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const/4 v2, 0x1

    .line 47
    .end local v1           #id:Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected matchClass(Ljava/lang/String;)Z
    .locals 3
    .parameter "type"

    .prologue
    .line 141
    iget-object v2, p0, Lit/unina/androidripper/planning/adapters/InteractorAdapter;->widgetClasses:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 142
    .local v1, storedType:Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 144
    .end local v1           #storedType:Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setAbstractor(Lit/unina/androidripper/model/Abstractor;)V
    .locals 0
    .parameter "a"

    .prologue
    .line 135
    iput-object p1, p0, Lit/unina/androidripper/planning/adapters/InteractorAdapter;->theAbstractor:Lit/unina/androidripper/model/Abstractor;

    .line 136
    return-void
.end method

.method public setEventWhenNoId(Z)V
    .locals 0
    .parameter "eventWhenNoId"

    .prologue
    .line 152
    iput-boolean p1, p0, Lit/unina/androidripper/planning/adapters/InteractorAdapter;->eventWhenNoId:Z

    .line 153
    return-void
.end method
