.class public Lit/unina/androidripper/planning/interactors/DictionaryValueWriter;
.super Lit/unina/androidripper/planning/adapters/InteractorAdapter;
.source "DictionaryValueWriter.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 23
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "writeText"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lit/unina/androidripper/planning/interactors/DictionaryValueWriter;-><init>([Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public varargs constructor <init>(Lit/unina/androidripper/model/Abstractor;[Ljava/lang/String;)V
    .locals 0
    .parameter "theAbstractor"
    .parameter "simpleTypes"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lit/unina/androidripper/planning/adapters/InteractorAdapter;-><init>(Lit/unina/androidripper/model/Abstractor;[Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 0
    .parameter "simpleTypes"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lit/unina/androidripper/planning/adapters/InteractorAdapter;-><init>([Ljava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method public getEvents(Lcom/nofatclips/androidtesting/model/WidgetState;)Ljava/util/List;
    .locals 1
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
    .line 99
    invoke-virtual {p0, p1}, Lit/unina/androidripper/planning/interactors/DictionaryValueWriter;->getValues(Lcom/nofatclips/androidtesting/model/WidgetState;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lit/unina/androidripper/planning/interactors/DictionaryValueWriter;->getEvents(Lcom/nofatclips/androidtesting/model/WidgetState;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInputs(Lcom/nofatclips/androidtesting/model/WidgetState;)Ljava/util/List;
    .locals 1
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
    .line 104
    invoke-virtual {p0, p1}, Lit/unina/androidripper/planning/interactors/DictionaryValueWriter;->getValues(Lcom/nofatclips/androidtesting/model/WidgetState;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lit/unina/androidripper/planning/interactors/DictionaryValueWriter;->getInputs(Lcom/nofatclips/androidtesting/model/WidgetState;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInteractionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    const-string v0, "writeText"

    return-object v0
.end method

.method public getValues(Lcom/nofatclips/androidtesting/model/WidgetState;)[Ljava/lang/String;
    .locals 4
    .parameter "w"

    .prologue
    .line 44
    const/4 v1, 0x0

    .line 46
    .local v1, values:[Ljava/lang/String;
    sget-boolean v2, Lit/unina/androidripper/planning/Resources;->DICTIONARY_FIXED_VALUE:Z

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/WidgetState;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/WidgetState;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 51
    const-string v2, "androidripper"

    const-string v3, "DictionaryValueWriter: Using values from cache"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-static {}, Lit/unina/androidripper/planning/interactors/values_cache/ValuesCache;->getInstance()Lit/unina/androidripper/planning/interactors/values_cache/ValuesCache;

    move-result-object v0

    .line 54
    .local v0, vCache:Lit/unina/androidripper/planning/interactors/values_cache/ValuesCache;
    if-eqz v0, :cond_3

    .line 56
    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/WidgetState;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lit/unina/androidripper/planning/interactors/values_cache/ValuesCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #values:[Ljava/lang/String;
    check-cast v1, [Ljava/lang/String;

    .line 65
    .end local v0           #vCache:Lit/unina/androidripper/planning/interactors/values_cache/ValuesCache;
    .restart local v1       #values:[Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    .line 67
    const-string v2, "androidripper"

    const-string v3, "DictionaryValueWriter: Generating new values"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    sget-boolean v2, Lit/unina/androidripper/planning/Resources;->DICTIONARY_IGNORE_CONTENT_TYPES:Z

    if-eqz v2, :cond_4

    .line 71
    invoke-static {p1}, Lcom/nofatclips/dictionary/TestValuesDictionary;->getRandomMixedValues(Lcom/nofatclips/androidtesting/model/WidgetState;)[Ljava/lang/String;

    move-result-object v1

    .line 80
    :cond_1
    :goto_0
    sget-boolean v2, Lit/unina/androidripper/planning/Resources;->DICTIONARY_FIXED_VALUE:Z

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/WidgetState;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/WidgetState;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 85
    const-string v2, "androidripper"

    const-string v3, "DictionaryValueWriter: Saving values to cache"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static {}, Lit/unina/androidripper/planning/interactors/values_cache/ValuesCache;->getInstance()Lit/unina/androidripper/planning/interactors/values_cache/ValuesCache;

    move-result-object v0

    .line 88
    .restart local v0       #vCache:Lit/unina/androidripper/planning/interactors/values_cache/ValuesCache;
    if-eqz v0, :cond_5

    .line 89
    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/WidgetState;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lit/unina/androidripper/planning/interactors/values_cache/ValuesCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .end local v0           #vCache:Lit/unina/androidripper/planning/interactors/values_cache/ValuesCache;
    :cond_2
    return-object v1

    .line 60
    .restart local v0       #vCache:Lit/unina/androidripper/planning/interactors/values_cache/ValuesCache;
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "ValuesCache error!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 75
    .end local v0           #vCache:Lit/unina/androidripper/planning/interactors/values_cache/ValuesCache;
    :cond_4
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/nofatclips/dictionary/TestValuesDictionary;->getValues(Lcom/nofatclips/androidtesting/model/WidgetState;Z)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 91
    .restart local v0       #vCache:Lit/unina/androidripper/planning/interactors/values_cache/ValuesCache;
    :cond_5
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "ValuesCache error!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
