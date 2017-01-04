.class public Lit/unina/androidripper/planning/interactors/FixedValueSearchEditor;
.super Lit/unina/androidripper/planning/adapters/InteractorAdapter;
.source "FixedValueSearchEditor.java"


# instance fields
.field private idValuePairs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "searchBar"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "focusableEditText"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lit/unina/androidripper/planning/interactors/FixedValueSearchEditor;-><init>([Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 1
    .parameter "simpleTypes"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lit/unina/androidripper/planning/adapters/InteractorAdapter;-><init>([Ljava/lang/String;)V

    .line 22
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lit/unina/androidripper/planning/interactors/FixedValueSearchEditor;->idValuePairs:Ljava/util/Map;

    .line 30
    return-void
.end method


# virtual methods
.method public varargs addIdValuePair(I[Ljava/lang/String;)Lit/unina/androidripper/planning/interactors/FixedValueSearchEditor;
    .locals 1
    .parameter "id"
    .parameter "value"

    .prologue
    .line 93
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lit/unina/androidripper/planning/interactors/FixedValueSearchEditor;->addIdValuePair(Ljava/lang/String;[Ljava/lang/String;)Lit/unina/androidripper/planning/interactors/FixedValueSearchEditor;

    move-result-object v0

    return-object v0
.end method

.method public varargs addIdValuePair(Ljava/lang/String;[Ljava/lang/String;)Lit/unina/androidripper/planning/interactors/FixedValueSearchEditor;
    .locals 6
    .parameter "id"
    .parameter "values"

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lit/unina/androidripper/planning/interactors/FixedValueSearchEditor;->hasId(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 81
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v4, valuesForId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lit/unina/androidripper/planning/interactors/FixedValueSearchEditor;->idValuePairs:Ljava/util/Map;

    invoke-interface {v5, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :goto_0
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 87
    .local v3, value:Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 84
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #value:Ljava/lang/String;
    .end local v4           #valuesForId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    iget-object v5, p0, Lit/unina/androidripper/planning/interactors/FixedValueSearchEditor;->idValuePairs:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .restart local v4       #valuesForId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0

    .line 89
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    :cond_1
    return-object p0
.end method

.method public canUseWidget(Lcom/nofatclips/androidtesting/model/WidgetState;)Z
    .locals 1
    .parameter "w"

    .prologue
    .line 34
    invoke-super {p0, p1}, Lit/unina/androidripper/planning/adapters/InteractorAdapter;->canUseWidget(Lcom/nofatclips/androidtesting/model/WidgetState;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/WidgetState;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lit/unina/androidripper/planning/interactors/FixedValueSearchEditor;->hasId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEvents(Lcom/nofatclips/androidtesting/model/WidgetState;)Ljava/util/List;
    .locals 7
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
    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v0, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nofatclips/androidtesting/model/UserEvent;>;"
    invoke-virtual {p0, p1}, Lit/unina/androidripper/planning/interactors/FixedValueSearchEditor;->canUseWidget(Lcom/nofatclips/androidtesting/model/WidgetState;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 48
    iget-object v4, p0, Lit/unina/androidripper/planning/interactors/FixedValueSearchEditor;->idValuePairs:Ljava/util/Map;

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/WidgetState;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 49
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 50
    .local v2, value:Ljava/lang/String;
    const-string v4, "androidripper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Handling event \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lit/unina/androidripper/planning/interactors/FixedValueSearchEditor;->getInteractionType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' on widget id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/WidgetState;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual {p0, p1, v2}, Lit/unina/androidripper/planning/interactors/FixedValueSearchEditor;->generateEvent(Lcom/nofatclips/androidtesting/model/WidgetState;Ljava/lang/String;)Lcom/nofatclips/androidtesting/model/UserEvent;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 54
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #value:Ljava/lang/String;
    .end local v3           #values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    return-object v0
.end method

.method public getInputs(Lcom/nofatclips/androidtesting/model/WidgetState;)Ljava/util/List;
    .locals 7
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
    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v1, inputs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nofatclips/androidtesting/model/UserInput;>;"
    invoke-virtual {p0, p1}, Lit/unina/androidripper/planning/interactors/FixedValueSearchEditor;->canUseWidget(Lcom/nofatclips/androidtesting/model/WidgetState;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 61
    iget-object v4, p0, Lit/unina/androidripper/planning/interactors/FixedValueSearchEditor;->idValuePairs:Ljava/util/Map;

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/WidgetState;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 62
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 63
    .local v2, value:Ljava/lang/String;
    const-string v4, "androidripper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Handling input \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lit/unina/androidripper/planning/interactors/FixedValueSearchEditor;->getInteractionType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' on widget id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/WidgetState;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {p0, p1, v2}, Lit/unina/androidripper/planning/interactors/FixedValueSearchEditor;->generateInput(Lcom/nofatclips/androidtesting/model/WidgetState;Ljava/lang/String;)Lcom/nofatclips/androidtesting/model/UserInput;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #value:Ljava/lang/String;
    .end local v3           #values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    return-object v1
.end method

.method public getInteractionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-string v0, "searchText"

    return-object v0
.end method

.method public hasId(Ljava/lang/String;)Z
    .locals 3
    .parameter "id"

    .prologue
    .line 38
    iget-object v2, p0, Lit/unina/androidripper/planning/interactors/FixedValueSearchEditor;->idValuePairs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 39
    .local v0, c:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 41
    .end local v0           #c:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setIdValuePairs(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, pairs:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iput-object p1, p0, Lit/unina/androidripper/planning/interactors/FixedValueSearchEditor;->idValuePairs:Ljava/util/Map;

    .line 76
    return-void
.end method
