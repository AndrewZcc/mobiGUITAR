.class public Lit/unina/androidripper/planning/UserFactory;
.super Ljava/lang/Object;
.source "UserFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lit/unina/androidripper/planning/UserFactory$1;,
        Lit/unina/androidripper/planning/UserFactory$InteractionMap;,
        Lit/unina/androidripper/planning/UserFactory$Category;
    }
.end annotation


# static fields
.field public static final ALL:Ljava/lang/String; = "ALL"

.field public static eventToTypeMap:Lit/unina/androidripper/planning/UserFactory$InteractionMap;

.field public static inputToTypeMap:Lit/unina/androidripper/planning/UserFactory$InteractionMap;

.field public static overridesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static vetoesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lit/unina/androidripper/planning/UserFactory$InteractionMap;

    invoke-direct {v0}, Lit/unina/androidripper/planning/UserFactory$InteractionMap;-><init>()V

    sput-object v0, Lit/unina/androidripper/planning/UserFactory;->eventToTypeMap:Lit/unina/androidripper/planning/UserFactory$InteractionMap;

    .line 17
    new-instance v0, Lit/unina/androidripper/planning/UserFactory$InteractionMap;

    invoke-direct {v0}, Lit/unina/androidripper/planning/UserFactory$InteractionMap;-><init>()V

    sput-object v0, Lit/unina/androidripper/planning/UserFactory;->inputToTypeMap:Lit/unina/androidripper/planning/UserFactory$InteractionMap;

    .line 18
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lit/unina/androidripper/planning/UserFactory;->vetoesMap:Ljava/util/Map;

    .line 19
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lit/unina/androidripper/planning/UserFactory;->overridesMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 671
    return-void
.end method

.method public static addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;
    .locals 1
    .parameter "i"

    .prologue
    .line 88
    const-string v0, "ALL"

    invoke-static {p0, v0}, Lit/unina/androidripper/planning/UserFactory;->addVetoes(Lit/unina/androidripper/planning/adapters/InteractorAdapter;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lit/unina/androidripper/planning/adapters/InteractorAdapter;->getInteractionType()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lit/unina/androidripper/planning/UserFactory;->addVetoes(Lit/unina/androidripper/planning/adapters/InteractorAdapter;Ljava/lang/String;)V

    .line 90
    const-string v0, "ALL"

    invoke-static {p0, v0}, Lit/unina/androidripper/planning/UserFactory;->addOverrides(Lit/unina/androidripper/planning/adapters/InteractorAdapter;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lit/unina/androidripper/planning/adapters/InteractorAdapter;->getInteractionType()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lit/unina/androidripper/planning/UserFactory;->addOverrides(Lit/unina/androidripper/planning/adapters/InteractorAdapter;Ljava/lang/String;)V

    .line 92
    return-object p0
.end method

.method public static varargs addEvent(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "eventType"
    .parameter "widgetTypes"

    .prologue
    .line 28
    sget-object v0, Lit/unina/androidripper/planning/UserFactory;->eventToTypeMap:Lit/unina/androidripper/planning/UserFactory$InteractionMap;

    invoke-virtual {v0, p0, p1}, Lit/unina/androidripper/planning/UserFactory$InteractionMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    return-void
.end method

.method public static varargs addInput(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "inputType"
    .parameter "widgetTypes"

    .prologue
    .line 32
    sget-object v0, Lit/unina/androidripper/planning/UserFactory;->inputToTypeMap:Lit/unina/androidripper/planning/UserFactory$InteractionMap;

    invoke-virtual {v0, p0, p1}, Lit/unina/androidripper/planning/UserFactory$InteractionMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-void
.end method

.method public static addOverrides(Lit/unina/androidripper/planning/adapters/InteractorAdapter;Ljava/lang/String;)V
    .locals 1
    .parameter "i"
    .parameter "event"

    .prologue
    .line 102
    sget-object v0, Lit/unina/androidripper/planning/UserFactory;->overridesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    sget-object v0, Lit/unina/androidripper/planning/UserFactory;->overridesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0, v0}, Lit/unina/androidripper/planning/adapters/InteractorAdapter;->forceIds(Ljava/util/Collection;)V

    .line 105
    :cond_0
    return-void
.end method

.method public static addVetoes(Lit/unina/androidripper/planning/adapters/InteractorAdapter;Ljava/lang/String;)V
    .locals 1
    .parameter "i"
    .parameter "event"

    .prologue
    .line 96
    sget-object v0, Lit/unina/androidripper/planning/UserFactory;->vetoesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    sget-object v0, Lit/unina/androidripper/planning/UserFactory;->vetoesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0, v0}, Lit/unina/androidripper/planning/adapters/InteractorAdapter;->denyIds(Ljava/util/Collection;)V

    .line 99
    :cond_0
    return-void
.end method

.method public static varargs denyIds([I)V
    .locals 8
    .parameter "ids"

    .prologue
    .line 57
    move-object v0, p0

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget v4, v0, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 58
    .local v2, id:Ljava/lang/Integer;
    const-string v4, "ALL"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lit/unina/androidripper/planning/UserFactory;->denyIdsForEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    .end local v2           #id:Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method public static varargs denyIds([Ljava/lang/String;)V
    .locals 1
    .parameter "ids"

    .prologue
    .line 44
    const-string v0, "ALL"

    invoke-static {v0, p0}, Lit/unina/androidripper/planning/UserFactory;->denyIdsForEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static varargs denyIdsForEvent(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .parameter "event"
    .parameter "ids"

    .prologue
    .line 48
    sget-object v4, Lit/unina/androidripper/planning/UserFactory;->vetoesMap:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 49
    sget-object v4, Lit/unina/androidripper/planning/UserFactory;->vetoesMap:Ljava/util/Map;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, p0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_0
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 52
    .local v2, id:Ljava/lang/String;
    sget-object v4, Lit/unina/androidripper/planning/UserFactory;->vetoesMap:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    .end local v2           #id:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static varargs denyInteractionOnIds(Ljava/lang/String;[I)V
    .locals 7
    .parameter "event"
    .parameter "ids"

    .prologue
    .line 82
    move-object v0, p1

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget v4, v0, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 83
    .local v2, id:Ljava/lang/Integer;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {p0, v4}, Lit/unina/androidripper/planning/UserFactory;->denyIdsForEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    .end local v2           #id:Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method public static doForceSeed()Z
    .locals 4

    .prologue
    .line 135
    sget-wide v0, Lit/unina/androidripper/Resources;->RANDOM_SEED:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs forceIds([I)V
    .locals 8
    .parameter "ids"

    .prologue
    .line 76
    move-object v0, p0

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget v4, v0, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 77
    .local v2, id:Ljava/lang/Integer;
    const-string v4, "ALL"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lit/unina/androidripper/planning/UserFactory;->forceIdsForEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    .end local v2           #id:Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method public static varargs forceIds([Ljava/lang/String;)V
    .locals 1
    .parameter "ids"

    .prologue
    .line 63
    const-string v0, "ALL"

    invoke-static {v0, p0}, Lit/unina/androidripper/planning/UserFactory;->forceIdsForEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public static varargs forceIdsForEvent(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .parameter "event"
    .parameter "ids"

    .prologue
    .line 67
    sget-object v4, Lit/unina/androidripper/planning/UserFactory;->overridesMap:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 68
    sget-object v4, Lit/unina/androidripper/planning/UserFactory;->overridesMap:Ljava/util/Map;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, p0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_0
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 71
    .local v2, id:Ljava/lang/String;
    sget-object v4, Lit/unina/androidripper/planning/UserFactory;->overridesMap:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    .end local v2           #id:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static getUser(Lit/unina/androidripper/model/Abstractor;)Lit/unina/androidripper/model/UserAdapter;
    .locals 30
    .parameter "a"

    .prologue
    .line 147
    invoke-static {}, Lit/unina/androidripper/planning/UserFactory;->isUserSimple()Z

    move-result v27

    if-eqz v27, :cond_f

    .line 148
    invoke-static {}, Lit/unina/androidripper/planning/UserFactory;->doForceSeed()Z

    move-result v27

    if-eqz v27, :cond_e

    new-instance v25, Lit/unina/androidripper/planning/SimpleUser;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lit/unina/androidripper/planning/SimpleUser;-><init>(Lit/unina/androidripper/model/Abstractor;)V

    .line 153
    .local v25, u:Lit/unina/androidripper/model/UserAdapter;
    :goto_0
    const-string v27, "click"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->isRequiredEvent(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_0

    .line 154
    new-instance v5, Lit/unina/androidripper/planning/interactors/Clicker;

    const-string v27, "click"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForEvent(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v5, v0}, Lit/unina/androidripper/planning/interactors/Clicker;-><init>([Ljava/lang/String;)V

    .line 155
    .local v5, c:Lit/unina/androidripper/planning/interactors/Clicker;
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->EVENT_WHEN_NO_ID:Z

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lit/unina/androidripper/planning/interactors/Clicker;->setEventWhenNoId(Z)V

    .line 156
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static {v5}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addEvent([Lit/unina/androidripper/model/Interactor;)V

    .line 159
    .end local v5           #c:Lit/unina/androidripper/planning/interactors/Clicker;
    :cond_0
    const-string v27, "focus"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->isRequiredEvent(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_1

    .line 160
    new-instance v5, Lit/unina/androidripper/planning/interactors/Focuser;

    const-string v27, "focus"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForEvent(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v5, v0}, Lit/unina/androidripper/planning/interactors/Focuser;-><init>([Ljava/lang/String;)V

    .line 161
    .local v5, c:Lit/unina/androidripper/planning/interactors/Focuser;
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->EVENT_WHEN_NO_ID:Z

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lit/unina/androidripper/planning/interactors/Focuser;->setEventWhenNoId(Z)V

    .line 162
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static {v5}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addEvent([Lit/unina/androidripper/model/Interactor;)V

    .line 165
    .end local v5           #c:Lit/unina/androidripper/planning/interactors/Focuser;
    :cond_1
    const-string v27, "drag"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->isRequiredEvent(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_2

    .line 166
    new-instance v7, Lit/unina/androidripper/planning/interactors/Drager;

    const-string v27, "drag"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForEvent(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v7, v0}, Lit/unina/androidripper/planning/interactors/Drager;-><init>([Ljava/lang/String;)V

    .line 167
    .local v7, d:Lit/unina/androidripper/planning/interactors/Drager;
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->EVENT_WHEN_NO_ID:Z

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Lit/unina/androidripper/planning/interactors/Drager;->setEventWhenNoId(Z)V

    .line 168
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static {v7}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addEvent([Lit/unina/androidripper/model/Interactor;)V

    .line 171
    .end local v7           #d:Lit/unina/androidripper/planning/interactors/Drager;
    :cond_2
    const-string v27, "editText"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->isRequiredEvent(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_3

    .line 172
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->TEXT_VALUES_FROM_DICTIONARY:Z

    if-eqz v27, :cond_11

    .line 174
    new-instance v23, Lit/unina/androidripper/planning/interactors/DictionaryValueEditor;

    const-string v27, "editText"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForEvent(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lit/unina/androidripper/planning/interactors/DictionaryValueEditor;-><init>([Ljava/lang/String;)V

    .line 175
    .local v23, te:Lit/unina/androidripper/planning/interactors/DictionaryValueEditor;
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->EVENT_WHEN_NO_ID:Z

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lit/unina/androidripper/planning/interactors/DictionaryValueEditor;->setEventWhenNoId(Z)V

    .line 176
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v23 .. v23}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addEvent([Lit/unina/androidripper/model/Interactor;)V

    .line 192
    .end local v23           #te:Lit/unina/androidripper/planning/interactors/DictionaryValueEditor;
    :cond_3
    :goto_1
    const-string v27, "writeText"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->isRequiredEvent(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_4

    .line 193
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->TEXT_VALUES_FROM_DICTIONARY:Z

    if-eqz v27, :cond_13

    .line 195
    new-instance v26, Lit/unina/androidripper/planning/interactors/DictionaryValueWriter;

    const-string v27, "writeText"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForEvent(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Lit/unina/androidripper/planning/interactors/DictionaryValueWriter;-><init>([Ljava/lang/String;)V

    .line 196
    .local v26, we:Lit/unina/androidripper/planning/interactors/DictionaryValueWriter;
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->EVENT_WHEN_NO_ID:Z

    invoke-virtual/range {v26 .. v27}, Lit/unina/androidripper/planning/interactors/DictionaryValueWriter;->setEventWhenNoId(Z)V

    .line 197
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v26 .. v26}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addEvent([Lit/unina/androidripper/model/Interactor;)V

    .line 213
    .end local v26           #we:Lit/unina/androidripper/planning/interactors/DictionaryValueWriter;
    :cond_4
    :goto_2
    const-string v27, "searchText"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->isRequiredEvent(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_5

    .line 214
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->TEXT_VALUES_FROM_DICTIONARY:Z

    if-eqz v27, :cond_15

    .line 216
    new-instance v21, Lit/unina/androidripper/planning/interactors/DictionaryValueSearchWriter;

    const-string v27, "searchText"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForEvent(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lit/unina/androidripper/planning/interactors/DictionaryValueSearchWriter;-><init>([Ljava/lang/String;)V

    .line 217
    .local v21, ste:Lit/unina/androidripper/planning/interactors/DictionaryValueSearchWriter;
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->EVENT_WHEN_NO_ID:Z

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lit/unina/androidripper/planning/interactors/DictionaryValueSearchWriter;->setEventWhenNoId(Z)V

    .line 218
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v21 .. v21}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addEvent([Lit/unina/androidripper/model/Interactor;)V

    .line 234
    .end local v21           #ste:Lit/unina/androidripper/planning/interactors/DictionaryValueSearchWriter;
    :cond_5
    :goto_3
    const-string v27, "autoText"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->isRequiredEvent(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_6

    .line 235
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->TEXT_VALUES_FROM_DICTIONARY:Z

    if-eqz v27, :cond_17

    .line 237
    new-instance v4, Lit/unina/androidripper/planning/interactors/DictionaryValueAutoEditor;

    const-string v27, "autoText"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForEvent(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v4, v0}, Lit/unina/androidripper/planning/interactors/DictionaryValueAutoEditor;-><init>([Ljava/lang/String;)V

    .line 238
    .local v4, ate:Lit/unina/androidripper/planning/interactors/DictionaryValueAutoEditor;
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->EVENT_WHEN_NO_ID:Z

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Lit/unina/androidripper/planning/interactors/DictionaryValueAutoEditor;->setEventWhenNoId(Z)V

    .line 239
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static {v4}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addEvent([Lit/unina/androidripper/model/Interactor;)V

    .line 255
    .end local v4           #ate:Lit/unina/androidripper/planning/interactors/DictionaryValueAutoEditor;
    :cond_6
    :goto_4
    const-string v27, "longClick"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->isRequiredEvent(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_7

    .line 256
    new-instance v10, Lit/unina/androidripper/planning/interactors/LongClicker;

    const-string v27, "longClick"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForEvent(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v10, v0}, Lit/unina/androidripper/planning/interactors/LongClicker;-><init>([Ljava/lang/String;)V

    .line 257
    .local v10, l:Lit/unina/androidripper/planning/interactors/LongClicker;
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->EVENT_WHEN_NO_ID:Z

    move/from16 v0, v27

    invoke-virtual {v10, v0}, Lit/unina/androidripper/planning/interactors/LongClicker;->setEventWhenNoId(Z)V

    .line 258
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static {v10}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addEvent([Lit/unina/androidripper/model/Interactor;)V

    .line 261
    .end local v10           #l:Lit/unina/androidripper/planning/interactors/LongClicker;
    :cond_7
    const-string v27, "selectListItem"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->isRequiredEvent(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_8

    .line 262
    new-instance v13, Lit/unina/androidripper/planning/interactors/ListSelector;

    sget v27, Lit/unina/androidripper/planning/Resources;->MAX_EVENTS_PER_WIDGET:I

    const-string v28, "selectListItem"

    invoke-static/range {v28 .. v28}, Lit/unina/androidripper/planning/UserFactory;->typesForEvent(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-direct {v13, v0, v1}, Lit/unina/androidripper/planning/interactors/ListSelector;-><init>(I[Ljava/lang/String;)V

    .line 263
    .local v13, ls:Lit/unina/androidripper/planning/interactors/ListSelector;
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Lit/unina/androidripper/planning/interactors/ListSelector;->setEventWhenNoId(Z)V

    .line 264
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static {v13}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addEvent([Lit/unina/androidripper/model/Interactor;)V

    .line 267
    .end local v13           #ls:Lit/unina/androidripper/planning/interactors/ListSelector;
    :cond_8
    const-string v27, "longClickListItem"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->isRequiredEvent(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_9

    .line 268
    new-instance v12, Lit/unina/androidripper/planning/interactors/ListLongClicker;

    sget v27, Lit/unina/androidripper/planning/Resources;->MAX_EVENTS_PER_WIDGET:I

    const-string v28, "longClickListItem"

    invoke-static/range {v28 .. v28}, Lit/unina/androidripper/planning/UserFactory;->typesForEvent(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-direct {v12, v0, v1}, Lit/unina/androidripper/planning/interactors/ListLongClicker;-><init>(I[Ljava/lang/String;)V

    .line 269
    .local v12, llc:Lit/unina/androidripper/planning/interactors/ListLongClicker;
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v12, v0}, Lit/unina/androidripper/planning/interactors/ListLongClicker;->setEventWhenNoId(Z)V

    .line 270
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static {v12}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addEvent([Lit/unina/androidripper/model/Interactor;)V

    .line 273
    .end local v12           #llc:Lit/unina/androidripper/planning/interactors/ListLongClicker;
    :cond_9
    const-string v27, "selectSpinnerItem"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->isRequiredEvent(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_a

    .line 274
    new-instance v20, Lit/unina/androidripper/planning/interactors/SpinnerSelector;

    sget v27, Lit/unina/androidripper/planning/Resources;->MAX_EVENTS_PER_WIDGET:I

    const-string v28, "selectSpinnerItem"

    invoke-static/range {v28 .. v28}, Lit/unina/androidripper/planning/UserFactory;->typesForEvent(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v20

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lit/unina/androidripper/planning/interactors/SpinnerSelector;-><init>(I[Ljava/lang/String;)V

    .line 275
    .local v20, ss:Lit/unina/androidripper/planning/interactors/SpinnerSelector;
    const/16 v27, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lit/unina/androidripper/planning/interactors/SpinnerSelector;->setEventWhenNoId(Z)V

    .line 276
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v20 .. v20}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addEvent([Lit/unina/androidripper/model/Interactor;)V

    .line 279
    .end local v20           #ss:Lit/unina/androidripper/planning/interactors/SpinnerSelector;
    :cond_a
    const-string v27, "selectRadioItem"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->isRequiredEvent(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_b

    .line 280
    new-instance v17, Lit/unina/androidripper/planning/interactors/RadioSelector;

    sget v27, Lit/unina/androidripper/planning/Resources;->MAX_EVENTS_PER_WIDGET:I

    const-string v28, "selectRadioItem"

    invoke-static/range {v28 .. v28}, Lit/unina/androidripper/planning/UserFactory;->typesForEvent(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v17

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lit/unina/androidripper/planning/interactors/RadioSelector;-><init>(I[Ljava/lang/String;)V

    .line 281
    .local v17, rs:Lit/unina/androidripper/planning/interactors/RadioSelector;
    const/16 v27, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lit/unina/androidripper/planning/interactors/RadioSelector;->setEventWhenNoId(Z)V

    .line 282
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v17 .. v17}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addEvent([Lit/unina/androidripper/model/Interactor;)V

    .line 285
    .end local v17           #rs:Lit/unina/androidripper/planning/interactors/RadioSelector;
    :cond_b
    const-string v27, "swapTab"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->isRequiredEvent(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_d

    .line 286
    new-instance v24, Lit/unina/androidripper/planning/interactors/TabSwapper;

    const-string v27, "swapTab"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForEvent(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lit/unina/androidripper/planning/interactors/TabSwapper;-><init>([Ljava/lang/String;)V

    .line 287
    .local v24, ts:Lit/unina/androidripper/planning/interactors/TabSwapper;
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->TAB_EVENTS_START_ONLY:Z

    if-eqz v27, :cond_c

    .line 288
    const/16 v27, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lit/unina/androidripper/planning/interactors/TabSwapper;->setOnlyOnce(Z)V

    .line 290
    :cond_c
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v24 .. v24}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addEvent([Lit/unina/androidripper/model/Interactor;)V

    .line 293
    .end local v24           #ts:Lit/unina/androidripper/planning/interactors/TabSwapper;
    :cond_d
    sget-object v3, Lit/unina/androidripper/Resources;->ADDITIONAL_EVENTS:[Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    .local v3, arr$:[Lit/unina/androidripper/planning/adapters/InteractorAdapter;
    array-length v11, v3

    .local v11, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_5
    if-ge v9, v11, :cond_19

    aget-object v8, v3, v9

    .line 294
    .local v8, i:Lit/unina/androidripper/planning/adapters/InteractorAdapter;
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->EVENT_WHEN_NO_ID:Z

    move/from16 v0, v27

    invoke-virtual {v8, v0}, Lit/unina/androidripper/planning/adapters/InteractorAdapter;->setEventWhenNoId(Z)V

    .line 295
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static {v8}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addEvent([Lit/unina/androidripper/model/Interactor;)V

    .line 293
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 148
    .end local v3           #arr$:[Lit/unina/androidripper/planning/adapters/InteractorAdapter;
    .end local v8           #i:Lit/unina/androidripper/planning/adapters/InteractorAdapter;
    .end local v9           #i$:I
    .end local v11           #len$:I
    .end local v25           #u:Lit/unina/androidripper/model/UserAdapter;
    :cond_e
    new-instance v25, Lit/unina/androidripper/planning/SimpleUser;

    new-instance v27, Ljava/util/Random;

    sget-wide v28, Lit/unina/androidripper/Resources;->RANDOM_SEED:J

    invoke-direct/range {v27 .. v29}, Ljava/util/Random;-><init>(J)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lit/unina/androidripper/planning/SimpleUser;-><init>(Lit/unina/androidripper/model/Abstractor;Ljava/util/Random;)V

    goto/16 :goto_0

    .line 150
    :cond_f
    invoke-static {}, Lit/unina/androidripper/planning/UserFactory;->doForceSeed()Z

    move-result v27

    if-eqz v27, :cond_10

    new-instance v25, Lit/unina/androidripper/planning/AlternativeUser;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lit/unina/androidripper/planning/AlternativeUser;-><init>(Lit/unina/androidripper/model/Abstractor;)V

    .restart local v25       #u:Lit/unina/androidripper/model/UserAdapter;
    :goto_6
    goto/16 :goto_0

    .end local v25           #u:Lit/unina/androidripper/model/UserAdapter;
    :cond_10
    new-instance v25, Lit/unina/androidripper/planning/AlternativeUser;

    new-instance v27, Ljava/util/Random;

    sget-wide v28, Lit/unina/androidripper/Resources;->RANDOM_SEED:J

    invoke-direct/range {v27 .. v29}, Ljava/util/Random;-><init>(J)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lit/unina/androidripper/planning/AlternativeUser;-><init>(Lit/unina/androidripper/model/Abstractor;Ljava/util/Random;)V

    goto :goto_6

    .line 178
    .restart local v25       #u:Lit/unina/androidripper/model/UserAdapter;
    :cond_11
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->TEXT_VALUES_ID_HASH:Z

    if-eqz v27, :cond_12

    .line 180
    new-instance v23, Lit/unina/androidripper/planning/interactors/HashValueEditor;

    const-string v27, "editText"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForEvent(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lit/unina/androidripper/planning/interactors/HashValueEditor;-><init>([Ljava/lang/String;)V

    .line 181
    .local v23, te:Lit/unina/androidripper/planning/interactors/HashValueEditor;
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->EVENT_WHEN_NO_ID:Z

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lit/unina/androidripper/planning/interactors/HashValueEditor;->setEventWhenNoId(Z)V

    .line 182
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v23 .. v23}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addEvent([Lit/unina/androidripper/model/Interactor;)V

    goto/16 :goto_1

    .line 186
    .end local v23           #te:Lit/unina/androidripper/planning/interactors/HashValueEditor;
    :cond_12
    new-instance v23, Lit/unina/androidripper/planning/interactors/RandomEditor;

    const-string v27, "editText"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForEvent(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lit/unina/androidripper/planning/interactors/RandomEditor;-><init>([Ljava/lang/String;)V

    .line 187
    .local v23, te:Lit/unina/androidripper/planning/interactors/RandomEditor;
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->EVENT_WHEN_NO_ID:Z

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lit/unina/androidripper/planning/interactors/RandomEditor;->setEventWhenNoId(Z)V

    .line 188
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v23 .. v23}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addEvent([Lit/unina/androidripper/model/Interactor;)V

    goto/16 :goto_1

    .line 199
    .end local v23           #te:Lit/unina/androidripper/planning/interactors/RandomEditor;
    :cond_13
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->TEXT_VALUES_ID_HASH:Z

    if-eqz v27, :cond_14

    .line 201
    new-instance v26, Lit/unina/androidripper/planning/interactors/HashValueWriter;

    const-string v27, "writeText"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForEvent(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Lit/unina/androidripper/planning/interactors/HashValueWriter;-><init>([Ljava/lang/String;)V

    .line 202
    .local v26, we:Lit/unina/androidripper/planning/interactors/HashValueWriter;
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->EVENT_WHEN_NO_ID:Z

    invoke-virtual/range {v26 .. v27}, Lit/unina/androidripper/planning/interactors/HashValueWriter;->setEventWhenNoId(Z)V

    .line 203
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v26 .. v26}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addEvent([Lit/unina/androidripper/model/Interactor;)V

    goto/16 :goto_2

    .line 207
    .end local v26           #we:Lit/unina/androidripper/planning/interactors/HashValueWriter;
    :cond_14
    new-instance v26, Lit/unina/androidripper/planning/interactors/RandomWriter;

    const-string v27, "writeText"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForEvent(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Lit/unina/androidripper/planning/interactors/RandomWriter;-><init>([Ljava/lang/String;)V

    .line 208
    .local v26, we:Lit/unina/androidripper/planning/interactors/RandomWriter;
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->EVENT_WHEN_NO_ID:Z

    invoke-virtual/range {v26 .. v27}, Lit/unina/androidripper/planning/interactors/RandomWriter;->setEventWhenNoId(Z)V

    .line 209
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v26 .. v26}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addEvent([Lit/unina/androidripper/model/Interactor;)V

    goto/16 :goto_2

    .line 220
    .end local v26           #we:Lit/unina/androidripper/planning/interactors/RandomWriter;
    :cond_15
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->TEXT_VALUES_ID_HASH:Z

    if-eqz v27, :cond_16

    .line 222
    new-instance v21, Lit/unina/androidripper/planning/interactors/HashValueSearchWriter;

    const-string v27, "searchText"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForEvent(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lit/unina/androidripper/planning/interactors/HashValueSearchWriter;-><init>([Ljava/lang/String;)V

    .line 223
    .local v21, ste:Lit/unina/androidripper/planning/interactors/HashValueSearchWriter;
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->EVENT_WHEN_NO_ID:Z

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lit/unina/androidripper/planning/interactors/HashValueSearchWriter;->setEventWhenNoId(Z)V

    .line 224
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v21 .. v21}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addEvent([Lit/unina/androidripper/model/Interactor;)V

    goto/16 :goto_3

    .line 228
    .end local v21           #ste:Lit/unina/androidripper/planning/interactors/HashValueSearchWriter;
    :cond_16
    new-instance v21, Lit/unina/androidripper/planning/interactors/RandomSearchWriter;

    const-string v27, "searchText"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForEvent(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lit/unina/androidripper/planning/interactors/RandomSearchWriter;-><init>([Ljava/lang/String;)V

    .line 229
    .local v21, ste:Lit/unina/androidripper/planning/interactors/RandomSearchWriter;
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->EVENT_WHEN_NO_ID:Z

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lit/unina/androidripper/planning/interactors/RandomSearchWriter;->setEventWhenNoId(Z)V

    .line 230
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v21 .. v21}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addEvent([Lit/unina/androidripper/model/Interactor;)V

    goto/16 :goto_3

    .line 241
    .end local v21           #ste:Lit/unina/androidripper/planning/interactors/RandomSearchWriter;
    :cond_17
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->TEXT_VALUES_ID_HASH:Z

    if-eqz v27, :cond_18

    .line 243
    new-instance v4, Lit/unina/androidripper/planning/interactors/HashValueAutoEditor;

    const-string v27, "autoText"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForEvent(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v4, v0}, Lit/unina/androidripper/planning/interactors/HashValueAutoEditor;-><init>([Ljava/lang/String;)V

    .line 244
    .local v4, ate:Lit/unina/androidripper/planning/interactors/HashValueAutoEditor;
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->EVENT_WHEN_NO_ID:Z

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Lit/unina/androidripper/planning/interactors/HashValueAutoEditor;->setEventWhenNoId(Z)V

    .line 245
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static {v4}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addEvent([Lit/unina/androidripper/model/Interactor;)V

    goto/16 :goto_4

    .line 249
    .end local v4           #ate:Lit/unina/androidripper/planning/interactors/HashValueAutoEditor;
    :cond_18
    new-instance v4, Lit/unina/androidripper/planning/interactors/RandomAutoEditor;

    const-string v27, "autoText"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForEvent(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v4, v0}, Lit/unina/androidripper/planning/interactors/RandomAutoEditor;-><init>([Ljava/lang/String;)V

    .line 250
    .local v4, ate:Lit/unina/androidripper/planning/interactors/RandomAutoEditor;
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->EVENT_WHEN_NO_ID:Z

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Lit/unina/androidripper/planning/interactors/RandomAutoEditor;->setEventWhenNoId(Z)V

    .line 251
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static {v4}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addEvent([Lit/unina/androidripper/model/Interactor;)V

    goto/16 :goto_4

    .line 298
    .end local v4           #ate:Lit/unina/androidripper/planning/interactors/RandomAutoEditor;
    .restart local v3       #arr$:[Lit/unina/androidripper/planning/adapters/InteractorAdapter;
    .restart local v9       #i$:I
    .restart local v11       #len$:I
    :cond_19
    const-string v27, "click"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->isRequiredInput(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_1a

    .line 299
    new-instance v6, Lit/unina/androidripper/planning/interactors/Clicker;

    const-string v27, "click"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForInput(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v6, v0}, Lit/unina/androidripper/planning/interactors/Clicker;-><init>([Ljava/lang/String;)V

    .line 300
    .local v6, c2:Lit/unina/androidripper/planning/interactors/Clicker;
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Lit/unina/androidripper/planning/interactors/Clicker;->setEventWhenNoId(Z)V

    .line 301
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static {v6}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addInput([Lit/unina/androidripper/model/Interactor;)V

    .line 304
    .end local v6           #c2:Lit/unina/androidripper/planning/interactors/Clicker;
    :cond_1a
    const-string v27, "focus"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->isRequiredInput(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_1b

    .line 305
    new-instance v5, Lit/unina/androidripper/planning/interactors/Focuser;

    const-string v27, "focus"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForInput(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v5, v0}, Lit/unina/androidripper/planning/interactors/Focuser;-><init>([Ljava/lang/String;)V

    .line 306
    .restart local v5       #c:Lit/unina/androidripper/planning/interactors/Focuser;
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->EVENT_WHEN_NO_ID:Z

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lit/unina/androidripper/planning/interactors/Focuser;->setEventWhenNoId(Z)V

    .line 307
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static {v5}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addEvent([Lit/unina/androidripper/model/Interactor;)V

    .line 310
    .end local v5           #c:Lit/unina/androidripper/planning/interactors/Focuser;
    :cond_1b
    const-string v27, "setBar"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->isRequiredInput(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_1c

    .line 311
    new-instance v19, Lit/unina/androidripper/planning/interactors/Slider;

    const-string v27, "setBar"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForInput(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lit/unina/androidripper/planning/interactors/Slider;-><init>([Ljava/lang/String;)V

    .line 312
    .local v19, sl:Lit/unina/androidripper/planning/interactors/Slider;
    const/16 v27, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lit/unina/androidripper/planning/interactors/Slider;->setEventWhenNoId(Z)V

    .line 313
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v19 .. v19}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addInput([Lit/unina/androidripper/model/Interactor;)V

    .line 316
    .end local v19           #sl:Lit/unina/androidripper/planning/interactors/Slider;
    :cond_1c
    const-string v27, "editText"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->isRequiredInput(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_1d

    .line 317
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->TEXT_VALUES_FROM_DICTIONARY:Z

    if-eqz v27, :cond_23

    .line 319
    new-instance v14, Lit/unina/androidripper/planning/interactors/DictionaryValueEditor;

    const-string v27, "editText"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForInput(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v14, v0}, Lit/unina/androidripper/planning/interactors/DictionaryValueEditor;-><init>([Ljava/lang/String;)V

    .line 320
    .local v14, re:Lit/unina/androidripper/planning/interactors/DictionaryValueEditor;
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Lit/unina/androidripper/planning/interactors/DictionaryValueEditor;->setEventWhenNoId(Z)V

    .line 321
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static {v14}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addInput([Lit/unina/androidripper/model/Interactor;)V

    .line 337
    .end local v14           #re:Lit/unina/androidripper/planning/interactors/DictionaryValueEditor;
    :cond_1d
    :goto_7
    const-string v27, "writeText"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->isRequiredInput(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_1e

    .line 338
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->TEXT_VALUES_FROM_DICTIONARY:Z

    if-eqz v27, :cond_25

    .line 340
    new-instance v14, Lit/unina/androidripper/planning/interactors/DictionaryValueWriter;

    const-string v27, "writeText"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForInput(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v14, v0}, Lit/unina/androidripper/planning/interactors/DictionaryValueWriter;-><init>([Ljava/lang/String;)V

    .line 341
    .local v14, re:Lit/unina/androidripper/planning/interactors/DictionaryValueWriter;
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Lit/unina/androidripper/planning/interactors/DictionaryValueWriter;->setEventWhenNoId(Z)V

    .line 342
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static {v14}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addInput([Lit/unina/androidripper/model/Interactor;)V

    .line 358
    .end local v14           #re:Lit/unina/androidripper/planning/interactors/DictionaryValueWriter;
    :cond_1e
    :goto_8
    const-string v27, "searchText"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->isRequiredInput(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_1f

    .line 359
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->TEXT_VALUES_FROM_DICTIONARY:Z

    if-eqz v27, :cond_27

    .line 361
    new-instance v22, Lit/unina/androidripper/planning/interactors/DictionaryValueSearchWriter;

    const-string v27, "searchText"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForInput(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lit/unina/androidripper/planning/interactors/DictionaryValueSearchWriter;-><init>([Ljava/lang/String;)V

    .line 362
    .local v22, sti:Lit/unina/androidripper/planning/interactors/DictionaryValueSearchWriter;
    const/16 v27, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lit/unina/androidripper/planning/interactors/DictionaryValueSearchWriter;->setEventWhenNoId(Z)V

    .line 363
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v22 .. v22}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addInput([Lit/unina/androidripper/model/Interactor;)V

    .line 379
    .end local v22           #sti:Lit/unina/androidripper/planning/interactors/DictionaryValueSearchWriter;
    :cond_1f
    :goto_9
    const-string v27, "selectSpinnerItem"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->isRequiredInput(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_20

    .line 380
    new-instance v18, Lit/unina/androidripper/planning/interactors/RandomSpinnerSelector;

    const-string v27, "selectSpinnerItem"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForInput(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lit/unina/androidripper/planning/interactors/RandomSpinnerSelector;-><init>([Ljava/lang/String;)V

    .line 381
    .local v18, rss:Lit/unina/androidripper/planning/interactors/RandomSpinnerSelector;
    const/16 v27, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lit/unina/androidripper/planning/interactors/RandomSpinnerSelector;->setEventWhenNoId(Z)V

    .line 382
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v18 .. v18}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addInput([Lit/unina/androidripper/model/Interactor;)V

    .line 385
    .end local v18           #rss:Lit/unina/androidripper/planning/interactors/RandomSpinnerSelector;
    :cond_20
    const-string v27, "selectRadioItem"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->isRequiredInput(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_21

    .line 386
    new-instance v16, Lit/unina/androidripper/planning/interactors/RandomRadioSelector;

    const-string v27, "selectRadioItem"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForInput(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lit/unina/androidripper/planning/interactors/RandomRadioSelector;-><init>([Ljava/lang/String;)V

    .line 387
    .local v16, rrs:Lit/unina/androidripper/planning/interactors/RandomRadioSelector;
    const/16 v27, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lit/unina/androidripper/planning/interactors/RandomRadioSelector;->setEventWhenNoId(Z)V

    .line 388
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v16 .. v16}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addInput([Lit/unina/androidripper/model/Interactor;)V

    .line 391
    .end local v16           #rrs:Lit/unina/androidripper/planning/interactors/RandomRadioSelector;
    :cond_21
    const-string v27, "selectListItem"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->isRequiredInput(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_22

    .line 392
    new-instance v15, Lit/unina/androidripper/planning/interactors/RandomListSelector;

    const-string v27, "selectListItem"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForInput(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v15, v0}, Lit/unina/androidripper/planning/interactors/RandomListSelector;-><init>([Ljava/lang/String;)V

    .line 393
    .local v15, rls:Lit/unina/androidripper/planning/interactors/RandomListSelector;
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v15, v0}, Lit/unina/androidripper/planning/interactors/RandomListSelector;->setEventWhenNoId(Z)V

    .line 394
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static {v15}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addInput([Lit/unina/androidripper/model/Interactor;)V

    .line 397
    .end local v15           #rls:Lit/unina/androidripper/planning/interactors/RandomListSelector;
    :cond_22
    sget-object v3, Lit/unina/androidripper/Resources;->ADDITIONAL_INPUTS:[Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    array-length v11, v3

    const/4 v9, 0x0

    :goto_a
    if-ge v9, v11, :cond_29

    aget-object v8, v3, v9

    .line 398
    .restart local v8       #i:Lit/unina/androidripper/planning/adapters/InteractorAdapter;
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v8, v0}, Lit/unina/androidripper/planning/adapters/InteractorAdapter;->setEventWhenNoId(Z)V

    .line 399
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static {v8}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addInput([Lit/unina/androidripper/model/Interactor;)V

    .line 397
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 323
    .end local v8           #i:Lit/unina/androidripper/planning/adapters/InteractorAdapter;
    :cond_23
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->TEXT_VALUES_ID_HASH:Z

    if-eqz v27, :cond_24

    .line 325
    new-instance v14, Lit/unina/androidripper/planning/interactors/HashValueEditor;

    const-string v27, "editText"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForInput(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v14, v0}, Lit/unina/androidripper/planning/interactors/HashValueEditor;-><init>([Ljava/lang/String;)V

    .line 326
    .local v14, re:Lit/unina/androidripper/planning/interactors/HashValueEditor;
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Lit/unina/androidripper/planning/interactors/HashValueEditor;->setEventWhenNoId(Z)V

    .line 327
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static {v14}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addInput([Lit/unina/androidripper/model/Interactor;)V

    goto/16 :goto_7

    .line 331
    .end local v14           #re:Lit/unina/androidripper/planning/interactors/HashValueEditor;
    :cond_24
    new-instance v14, Lit/unina/androidripper/planning/interactors/RandomEditor;

    const-string v27, "editText"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForInput(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v14, v0}, Lit/unina/androidripper/planning/interactors/RandomEditor;-><init>([Ljava/lang/String;)V

    .line 332
    .local v14, re:Lit/unina/androidripper/planning/interactors/RandomEditor;
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Lit/unina/androidripper/planning/interactors/RandomEditor;->setEventWhenNoId(Z)V

    .line 333
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static {v14}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addInput([Lit/unina/androidripper/model/Interactor;)V

    goto/16 :goto_7

    .line 344
    .end local v14           #re:Lit/unina/androidripper/planning/interactors/RandomEditor;
    :cond_25
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->TEXT_VALUES_ID_HASH:Z

    if-eqz v27, :cond_26

    .line 346
    new-instance v14, Lit/unina/androidripper/planning/interactors/HashValueWriter;

    const-string v27, "writeText"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForInput(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v14, v0}, Lit/unina/androidripper/planning/interactors/HashValueWriter;-><init>([Ljava/lang/String;)V

    .line 347
    .local v14, re:Lit/unina/androidripper/planning/interactors/HashValueWriter;
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Lit/unina/androidripper/planning/interactors/HashValueWriter;->setEventWhenNoId(Z)V

    .line 348
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static {v14}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addInput([Lit/unina/androidripper/model/Interactor;)V

    goto/16 :goto_8

    .line 352
    .end local v14           #re:Lit/unina/androidripper/planning/interactors/HashValueWriter;
    :cond_26
    new-instance v14, Lit/unina/androidripper/planning/interactors/RandomWriter;

    const-string v27, "writeText"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForInput(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v14, v0}, Lit/unina/androidripper/planning/interactors/RandomWriter;-><init>([Ljava/lang/String;)V

    .line 353
    .local v14, re:Lit/unina/androidripper/planning/interactors/RandomWriter;
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Lit/unina/androidripper/planning/interactors/RandomWriter;->setEventWhenNoId(Z)V

    .line 354
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static {v14}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addInput([Lit/unina/androidripper/model/Interactor;)V

    goto/16 :goto_8

    .line 365
    .end local v14           #re:Lit/unina/androidripper/planning/interactors/RandomWriter;
    :cond_27
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->TEXT_VALUES_ID_HASH:Z

    if-eqz v27, :cond_28

    .line 367
    new-instance v22, Lit/unina/androidripper/planning/interactors/HashValueSearchWriter;

    const-string v27, "searchText"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForInput(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lit/unina/androidripper/planning/interactors/HashValueSearchWriter;-><init>([Ljava/lang/String;)V

    .line 368
    .local v22, sti:Lit/unina/androidripper/planning/interactors/HashValueSearchWriter;
    const/16 v27, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lit/unina/androidripper/planning/interactors/HashValueSearchWriter;->setEventWhenNoId(Z)V

    .line 369
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v22 .. v22}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addInput([Lit/unina/androidripper/model/Interactor;)V

    goto/16 :goto_9

    .line 373
    .end local v22           #sti:Lit/unina/androidripper/planning/interactors/HashValueSearchWriter;
    :cond_28
    new-instance v22, Lit/unina/androidripper/planning/interactors/RandomSearchWriter;

    const-string v27, "searchText"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForInput(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lit/unina/androidripper/planning/interactors/RandomSearchWriter;-><init>([Ljava/lang/String;)V

    .line 374
    .local v22, sti:Lit/unina/androidripper/planning/interactors/RandomSearchWriter;
    const/16 v27, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lit/unina/androidripper/planning/interactors/RandomSearchWriter;->setEventWhenNoId(Z)V

    .line 375
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v22 .. v22}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addInput([Lit/unina/androidripper/model/Interactor;)V

    goto/16 :goto_9

    .line 402
    .end local v22           #sti:Lit/unina/androidripper/planning/interactors/RandomSearchWriter;
    :cond_29
    return-object v25
.end method

.method public static getUserForEvents(Lit/unina/androidripper/model/Abstractor;Ljava/lang/String;Ljava/util/ArrayList;)Lit/unina/androidripper/model/UserAdapter;
    .locals 30
    .parameter "a"
    .parameter "widgetType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lit/unina/androidripper/model/Abstractor;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lit/unina/androidripper/model/UserAdapter;"
        }
    .end annotation

    .prologue
    .line 411
    .local p2, eventTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lit/unina/androidripper/planning/UserFactory;->isUserSimple()Z

    move-result v27

    if-eqz v27, :cond_f

    .line 412
    invoke-static {}, Lit/unina/androidripper/planning/UserFactory;->doForceSeed()Z

    move-result v27

    if-eqz v27, :cond_e

    new-instance v25, Lit/unina/androidripper/planning/SimpleUser;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lit/unina/androidripper/planning/SimpleUser;-><init>(Lit/unina/androidripper/model/Abstractor;)V

    .line 417
    .local v25, u:Lit/unina/androidripper/model/UserAdapter;
    :goto_0
    const-string v27, "click"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_0

    .line 418
    new-instance v5, Lit/unina/androidripper/planning/interactors/Clicker;

    const-string v27, "click"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForEvent(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v5, v0}, Lit/unina/androidripper/planning/interactors/Clicker;-><init>([Ljava/lang/String;)V

    .line 419
    .local v5, c:Lit/unina/androidripper/planning/interactors/Clicker;
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->EVENT_WHEN_NO_ID:Z

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lit/unina/androidripper/planning/interactors/Clicker;->setEventWhenNoId(Z)V

    .line 420
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static {v5}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addEvent([Lit/unina/androidripper/model/Interactor;)V

    .line 423
    .end local v5           #c:Lit/unina/androidripper/planning/interactors/Clicker;
    :cond_0
    const-string v27, "focus"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1

    .line 424
    new-instance v5, Lit/unina/androidripper/planning/interactors/Focuser;

    const-string v27, "focus"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForEvent(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v5, v0}, Lit/unina/androidripper/planning/interactors/Focuser;-><init>([Ljava/lang/String;)V

    .line 425
    .local v5, c:Lit/unina/androidripper/planning/interactors/Focuser;
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->EVENT_WHEN_NO_ID:Z

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lit/unina/androidripper/planning/interactors/Focuser;->setEventWhenNoId(Z)V

    .line 426
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static {v5}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addEvent([Lit/unina/androidripper/model/Interactor;)V

    .line 429
    .end local v5           #c:Lit/unina/androidripper/planning/interactors/Focuser;
    :cond_1
    const-string v27, "drag"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2

    .line 430
    new-instance v7, Lit/unina/androidripper/planning/interactors/Drager;

    const-string v27, "drag"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForEvent(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v7, v0}, Lit/unina/androidripper/planning/interactors/Drager;-><init>([Ljava/lang/String;)V

    .line 431
    .local v7, d:Lit/unina/androidripper/planning/interactors/Drager;
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->EVENT_WHEN_NO_ID:Z

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Lit/unina/androidripper/planning/interactors/Drager;->setEventWhenNoId(Z)V

    .line 432
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static {v7}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addEvent([Lit/unina/androidripper/model/Interactor;)V

    .line 435
    .end local v7           #d:Lit/unina/androidripper/planning/interactors/Drager;
    :cond_2
    const-string v27, "editText"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_3

    .line 436
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->TEXT_VALUES_FROM_DICTIONARY:Z

    if-eqz v27, :cond_11

    .line 438
    new-instance v23, Lit/unina/androidripper/planning/interactors/DictionaryValueEditor;

    const-string v27, "editText"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForEvent(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lit/unina/androidripper/planning/interactors/DictionaryValueEditor;-><init>([Ljava/lang/String;)V

    .line 439
    .local v23, te:Lit/unina/androidripper/planning/interactors/DictionaryValueEditor;
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->EVENT_WHEN_NO_ID:Z

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lit/unina/androidripper/planning/interactors/DictionaryValueEditor;->setEventWhenNoId(Z)V

    .line 440
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v23 .. v23}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addEvent([Lit/unina/androidripper/model/Interactor;)V

    .line 456
    .end local v23           #te:Lit/unina/androidripper/planning/interactors/DictionaryValueEditor;
    :cond_3
    :goto_1
    const-string v27, "writeText"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    .line 457
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->TEXT_VALUES_FROM_DICTIONARY:Z

    if-eqz v27, :cond_13

    .line 459
    new-instance v26, Lit/unina/androidripper/planning/interactors/DictionaryValueWriter;

    const-string v27, "writeText"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForEvent(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Lit/unina/androidripper/planning/interactors/DictionaryValueWriter;-><init>([Ljava/lang/String;)V

    .line 460
    .local v26, we:Lit/unina/androidripper/planning/interactors/DictionaryValueWriter;
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->EVENT_WHEN_NO_ID:Z

    invoke-virtual/range {v26 .. v27}, Lit/unina/androidripper/planning/interactors/DictionaryValueWriter;->setEventWhenNoId(Z)V

    .line 461
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v26 .. v26}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addEvent([Lit/unina/androidripper/model/Interactor;)V

    .line 477
    .end local v26           #we:Lit/unina/androidripper/planning/interactors/DictionaryValueWriter;
    :cond_4
    :goto_2
    const-string v27, "searchText"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_5

    .line 478
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->TEXT_VALUES_FROM_DICTIONARY:Z

    if-eqz v27, :cond_15

    .line 480
    new-instance v21, Lit/unina/androidripper/planning/interactors/DictionaryValueSearchWriter;

    const-string v27, "searchText"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForEvent(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lit/unina/androidripper/planning/interactors/DictionaryValueSearchWriter;-><init>([Ljava/lang/String;)V

    .line 481
    .local v21, ste:Lit/unina/androidripper/planning/interactors/DictionaryValueSearchWriter;
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->EVENT_WHEN_NO_ID:Z

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lit/unina/androidripper/planning/interactors/DictionaryValueSearchWriter;->setEventWhenNoId(Z)V

    .line 482
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v21 .. v21}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addEvent([Lit/unina/androidripper/model/Interactor;)V

    .line 498
    .end local v21           #ste:Lit/unina/androidripper/planning/interactors/DictionaryValueSearchWriter;
    :cond_5
    :goto_3
    const-string v27, "autoText"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_6

    .line 499
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->TEXT_VALUES_FROM_DICTIONARY:Z

    if-eqz v27, :cond_17

    .line 501
    new-instance v4, Lit/unina/androidripper/planning/interactors/DictionaryValueAutoEditor;

    const-string v27, "autoText"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForEvent(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v4, v0}, Lit/unina/androidripper/planning/interactors/DictionaryValueAutoEditor;-><init>([Ljava/lang/String;)V

    .line 502
    .local v4, ate:Lit/unina/androidripper/planning/interactors/DictionaryValueAutoEditor;
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->EVENT_WHEN_NO_ID:Z

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Lit/unina/androidripper/planning/interactors/DictionaryValueAutoEditor;->setEventWhenNoId(Z)V

    .line 503
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static {v4}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addEvent([Lit/unina/androidripper/model/Interactor;)V

    .line 519
    .end local v4           #ate:Lit/unina/androidripper/planning/interactors/DictionaryValueAutoEditor;
    :cond_6
    :goto_4
    const-string v27, "longClick"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_7

    .line 520
    new-instance v10, Lit/unina/androidripper/planning/interactors/LongClicker;

    const-string v27, "longClick"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForEvent(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v10, v0}, Lit/unina/androidripper/planning/interactors/LongClicker;-><init>([Ljava/lang/String;)V

    .line 521
    .local v10, l:Lit/unina/androidripper/planning/interactors/LongClicker;
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->EVENT_WHEN_NO_ID:Z

    move/from16 v0, v27

    invoke-virtual {v10, v0}, Lit/unina/androidripper/planning/interactors/LongClicker;->setEventWhenNoId(Z)V

    .line 522
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static {v10}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addEvent([Lit/unina/androidripper/model/Interactor;)V

    .line 525
    .end local v10           #l:Lit/unina/androidripper/planning/interactors/LongClicker;
    :cond_7
    const-string v27, "selectListItem"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_8

    .line 526
    new-instance v13, Lit/unina/androidripper/planning/interactors/ListSelector;

    sget v27, Lit/unina/androidripper/planning/Resources;->MAX_EVENTS_PER_WIDGET:I

    const-string v28, "selectListItem"

    invoke-static/range {v28 .. v28}, Lit/unina/androidripper/planning/UserFactory;->typesForEvent(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-direct {v13, v0, v1}, Lit/unina/androidripper/planning/interactors/ListSelector;-><init>(I[Ljava/lang/String;)V

    .line 527
    .local v13, ls:Lit/unina/androidripper/planning/interactors/ListSelector;
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Lit/unina/androidripper/planning/interactors/ListSelector;->setEventWhenNoId(Z)V

    .line 528
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static {v13}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addEvent([Lit/unina/androidripper/model/Interactor;)V

    .line 531
    .end local v13           #ls:Lit/unina/androidripper/planning/interactors/ListSelector;
    :cond_8
    const-string v27, "longClickListItem"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_9

    .line 532
    new-instance v12, Lit/unina/androidripper/planning/interactors/ListLongClicker;

    sget v27, Lit/unina/androidripper/planning/Resources;->MAX_EVENTS_PER_WIDGET:I

    const-string v28, "longClickListItem"

    invoke-static/range {v28 .. v28}, Lit/unina/androidripper/planning/UserFactory;->typesForEvent(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-direct {v12, v0, v1}, Lit/unina/androidripper/planning/interactors/ListLongClicker;-><init>(I[Ljava/lang/String;)V

    .line 533
    .local v12, llc:Lit/unina/androidripper/planning/interactors/ListLongClicker;
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v12, v0}, Lit/unina/androidripper/planning/interactors/ListLongClicker;->setEventWhenNoId(Z)V

    .line 534
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static {v12}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addEvent([Lit/unina/androidripper/model/Interactor;)V

    .line 537
    .end local v12           #llc:Lit/unina/androidripper/planning/interactors/ListLongClicker;
    :cond_9
    const-string v27, "selectSpinnerItem"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_a

    .line 538
    new-instance v20, Lit/unina/androidripper/planning/interactors/SpinnerSelector;

    sget v27, Lit/unina/androidripper/planning/Resources;->MAX_EVENTS_PER_WIDGET:I

    const-string v28, "selectSpinnerItem"

    invoke-static/range {v28 .. v28}, Lit/unina/androidripper/planning/UserFactory;->typesForEvent(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v20

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lit/unina/androidripper/planning/interactors/SpinnerSelector;-><init>(I[Ljava/lang/String;)V

    .line 539
    .local v20, ss:Lit/unina/androidripper/planning/interactors/SpinnerSelector;
    const/16 v27, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lit/unina/androidripper/planning/interactors/SpinnerSelector;->setEventWhenNoId(Z)V

    .line 540
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v20 .. v20}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addEvent([Lit/unina/androidripper/model/Interactor;)V

    .line 543
    .end local v20           #ss:Lit/unina/androidripper/planning/interactors/SpinnerSelector;
    :cond_a
    const-string v27, "selectRadioItem"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_b

    .line 544
    new-instance v17, Lit/unina/androidripper/planning/interactors/RadioSelector;

    sget v27, Lit/unina/androidripper/planning/Resources;->MAX_EVENTS_PER_WIDGET:I

    const-string v28, "selectRadioItem"

    invoke-static/range {v28 .. v28}, Lit/unina/androidripper/planning/UserFactory;->typesForEvent(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v17

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lit/unina/androidripper/planning/interactors/RadioSelector;-><init>(I[Ljava/lang/String;)V

    .line 545
    .local v17, rs:Lit/unina/androidripper/planning/interactors/RadioSelector;
    const/16 v27, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lit/unina/androidripper/planning/interactors/RadioSelector;->setEventWhenNoId(Z)V

    .line 546
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v17 .. v17}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addEvent([Lit/unina/androidripper/model/Interactor;)V

    .line 549
    .end local v17           #rs:Lit/unina/androidripper/planning/interactors/RadioSelector;
    :cond_b
    const-string v27, "swapTab"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_d

    .line 550
    new-instance v24, Lit/unina/androidripper/planning/interactors/TabSwapper;

    const-string v27, "swapTab"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForEvent(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lit/unina/androidripper/planning/interactors/TabSwapper;-><init>([Ljava/lang/String;)V

    .line 551
    .local v24, ts:Lit/unina/androidripper/planning/interactors/TabSwapper;
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->TAB_EVENTS_START_ONLY:Z

    if-eqz v27, :cond_c

    .line 552
    const/16 v27, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lit/unina/androidripper/planning/interactors/TabSwapper;->setOnlyOnce(Z)V

    .line 554
    :cond_c
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v24 .. v24}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addEvent([Lit/unina/androidripper/model/Interactor;)V

    .line 557
    .end local v24           #ts:Lit/unina/androidripper/planning/interactors/TabSwapper;
    :cond_d
    sget-object v3, Lit/unina/androidripper/Resources;->ADDITIONAL_EVENTS:[Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    .local v3, arr$:[Lit/unina/androidripper/planning/adapters/InteractorAdapter;
    array-length v11, v3

    .local v11, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_5
    if-ge v9, v11, :cond_19

    aget-object v8, v3, v9

    .line 558
    .local v8, i:Lit/unina/androidripper/planning/adapters/InteractorAdapter;
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->EVENT_WHEN_NO_ID:Z

    move/from16 v0, v27

    invoke-virtual {v8, v0}, Lit/unina/androidripper/planning/adapters/InteractorAdapter;->setEventWhenNoId(Z)V

    .line 559
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static {v8}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addEvent([Lit/unina/androidripper/model/Interactor;)V

    .line 557
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 412
    .end local v3           #arr$:[Lit/unina/androidripper/planning/adapters/InteractorAdapter;
    .end local v8           #i:Lit/unina/androidripper/planning/adapters/InteractorAdapter;
    .end local v9           #i$:I
    .end local v11           #len$:I
    .end local v25           #u:Lit/unina/androidripper/model/UserAdapter;
    :cond_e
    new-instance v25, Lit/unina/androidripper/planning/SimpleUser;

    new-instance v27, Ljava/util/Random;

    sget-wide v28, Lit/unina/androidripper/Resources;->RANDOM_SEED:J

    invoke-direct/range {v27 .. v29}, Ljava/util/Random;-><init>(J)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lit/unina/androidripper/planning/SimpleUser;-><init>(Lit/unina/androidripper/model/Abstractor;Ljava/util/Random;)V

    goto/16 :goto_0

    .line 414
    :cond_f
    invoke-static {}, Lit/unina/androidripper/planning/UserFactory;->doForceSeed()Z

    move-result v27

    if-eqz v27, :cond_10

    new-instance v25, Lit/unina/androidripper/planning/AlternativeUser;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lit/unina/androidripper/planning/AlternativeUser;-><init>(Lit/unina/androidripper/model/Abstractor;)V

    .restart local v25       #u:Lit/unina/androidripper/model/UserAdapter;
    :goto_6
    goto/16 :goto_0

    .end local v25           #u:Lit/unina/androidripper/model/UserAdapter;
    :cond_10
    new-instance v25, Lit/unina/androidripper/planning/AlternativeUser;

    new-instance v27, Ljava/util/Random;

    sget-wide v28, Lit/unina/androidripper/Resources;->RANDOM_SEED:J

    invoke-direct/range {v27 .. v29}, Ljava/util/Random;-><init>(J)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lit/unina/androidripper/planning/AlternativeUser;-><init>(Lit/unina/androidripper/model/Abstractor;Ljava/util/Random;)V

    goto :goto_6

    .line 442
    .restart local v25       #u:Lit/unina/androidripper/model/UserAdapter;
    :cond_11
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->TEXT_VALUES_ID_HASH:Z

    if-eqz v27, :cond_12

    .line 444
    new-instance v23, Lit/unina/androidripper/planning/interactors/HashValueEditor;

    const-string v27, "editText"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForEvent(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lit/unina/androidripper/planning/interactors/HashValueEditor;-><init>([Ljava/lang/String;)V

    .line 445
    .local v23, te:Lit/unina/androidripper/planning/interactors/HashValueEditor;
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->EVENT_WHEN_NO_ID:Z

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lit/unina/androidripper/planning/interactors/HashValueEditor;->setEventWhenNoId(Z)V

    .line 446
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v23 .. v23}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addEvent([Lit/unina/androidripper/model/Interactor;)V

    goto/16 :goto_1

    .line 450
    .end local v23           #te:Lit/unina/androidripper/planning/interactors/HashValueEditor;
    :cond_12
    new-instance v23, Lit/unina/androidripper/planning/interactors/RandomEditor;

    const-string v27, "editText"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForEvent(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lit/unina/androidripper/planning/interactors/RandomEditor;-><init>([Ljava/lang/String;)V

    .line 451
    .local v23, te:Lit/unina/androidripper/planning/interactors/RandomEditor;
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->EVENT_WHEN_NO_ID:Z

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lit/unina/androidripper/planning/interactors/RandomEditor;->setEventWhenNoId(Z)V

    .line 452
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v23 .. v23}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addEvent([Lit/unina/androidripper/model/Interactor;)V

    goto/16 :goto_1

    .line 463
    .end local v23           #te:Lit/unina/androidripper/planning/interactors/RandomEditor;
    :cond_13
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->TEXT_VALUES_ID_HASH:Z

    if-eqz v27, :cond_14

    .line 465
    new-instance v26, Lit/unina/androidripper/planning/interactors/HashValueWriter;

    const-string v27, "writeText"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForEvent(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Lit/unina/androidripper/planning/interactors/HashValueWriter;-><init>([Ljava/lang/String;)V

    .line 466
    .local v26, we:Lit/unina/androidripper/planning/interactors/HashValueWriter;
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->EVENT_WHEN_NO_ID:Z

    invoke-virtual/range {v26 .. v27}, Lit/unina/androidripper/planning/interactors/HashValueWriter;->setEventWhenNoId(Z)V

    .line 467
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v26 .. v26}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addEvent([Lit/unina/androidripper/model/Interactor;)V

    goto/16 :goto_2

    .line 471
    .end local v26           #we:Lit/unina/androidripper/planning/interactors/HashValueWriter;
    :cond_14
    new-instance v26, Lit/unina/androidripper/planning/interactors/RandomWriter;

    const-string v27, "writeText"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForEvent(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Lit/unina/androidripper/planning/interactors/RandomWriter;-><init>([Ljava/lang/String;)V

    .line 472
    .local v26, we:Lit/unina/androidripper/planning/interactors/RandomWriter;
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->EVENT_WHEN_NO_ID:Z

    invoke-virtual/range {v26 .. v27}, Lit/unina/androidripper/planning/interactors/RandomWriter;->setEventWhenNoId(Z)V

    .line 473
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v26 .. v26}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addEvent([Lit/unina/androidripper/model/Interactor;)V

    goto/16 :goto_2

    .line 484
    .end local v26           #we:Lit/unina/androidripper/planning/interactors/RandomWriter;
    :cond_15
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->TEXT_VALUES_ID_HASH:Z

    if-eqz v27, :cond_16

    .line 486
    new-instance v21, Lit/unina/androidripper/planning/interactors/HashValueSearchWriter;

    const-string v27, "searchText"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForEvent(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lit/unina/androidripper/planning/interactors/HashValueSearchWriter;-><init>([Ljava/lang/String;)V

    .line 487
    .local v21, ste:Lit/unina/androidripper/planning/interactors/HashValueSearchWriter;
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->EVENT_WHEN_NO_ID:Z

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lit/unina/androidripper/planning/interactors/HashValueSearchWriter;->setEventWhenNoId(Z)V

    .line 488
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v21 .. v21}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addEvent([Lit/unina/androidripper/model/Interactor;)V

    goto/16 :goto_3

    .line 492
    .end local v21           #ste:Lit/unina/androidripper/planning/interactors/HashValueSearchWriter;
    :cond_16
    new-instance v21, Lit/unina/androidripper/planning/interactors/RandomSearchWriter;

    const-string v27, "searchText"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForEvent(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lit/unina/androidripper/planning/interactors/RandomSearchWriter;-><init>([Ljava/lang/String;)V

    .line 493
    .local v21, ste:Lit/unina/androidripper/planning/interactors/RandomSearchWriter;
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->EVENT_WHEN_NO_ID:Z

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lit/unina/androidripper/planning/interactors/RandomSearchWriter;->setEventWhenNoId(Z)V

    .line 494
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v21 .. v21}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addEvent([Lit/unina/androidripper/model/Interactor;)V

    goto/16 :goto_3

    .line 505
    .end local v21           #ste:Lit/unina/androidripper/planning/interactors/RandomSearchWriter;
    :cond_17
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->TEXT_VALUES_ID_HASH:Z

    if-eqz v27, :cond_18

    .line 507
    new-instance v4, Lit/unina/androidripper/planning/interactors/HashValueAutoEditor;

    const-string v27, "autoText"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForEvent(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v4, v0}, Lit/unina/androidripper/planning/interactors/HashValueAutoEditor;-><init>([Ljava/lang/String;)V

    .line 508
    .local v4, ate:Lit/unina/androidripper/planning/interactors/HashValueAutoEditor;
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->EVENT_WHEN_NO_ID:Z

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Lit/unina/androidripper/planning/interactors/HashValueAutoEditor;->setEventWhenNoId(Z)V

    .line 509
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static {v4}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addEvent([Lit/unina/androidripper/model/Interactor;)V

    goto/16 :goto_4

    .line 513
    .end local v4           #ate:Lit/unina/androidripper/planning/interactors/HashValueAutoEditor;
    :cond_18
    new-instance v4, Lit/unina/androidripper/planning/interactors/RandomAutoEditor;

    const-string v27, "autoText"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForEvent(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v4, v0}, Lit/unina/androidripper/planning/interactors/RandomAutoEditor;-><init>([Ljava/lang/String;)V

    .line 514
    .local v4, ate:Lit/unina/androidripper/planning/interactors/RandomAutoEditor;
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->EVENT_WHEN_NO_ID:Z

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Lit/unina/androidripper/planning/interactors/RandomAutoEditor;->setEventWhenNoId(Z)V

    .line 515
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static {v4}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addEvent([Lit/unina/androidripper/model/Interactor;)V

    goto/16 :goto_4

    .line 562
    .end local v4           #ate:Lit/unina/androidripper/planning/interactors/RandomAutoEditor;
    .restart local v3       #arr$:[Lit/unina/androidripper/planning/adapters/InteractorAdapter;
    .restart local v9       #i$:I
    .restart local v11       #len$:I
    :cond_19
    const-string v27, "click"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->isRequiredInput(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_1a

    .line 563
    new-instance v6, Lit/unina/androidripper/planning/interactors/Clicker;

    const-string v27, "click"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForInput(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v6, v0}, Lit/unina/androidripper/planning/interactors/Clicker;-><init>([Ljava/lang/String;)V

    .line 564
    .local v6, c2:Lit/unina/androidripper/planning/interactors/Clicker;
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Lit/unina/androidripper/planning/interactors/Clicker;->setEventWhenNoId(Z)V

    .line 565
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static {v6}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addInput([Lit/unina/androidripper/model/Interactor;)V

    .line 568
    .end local v6           #c2:Lit/unina/androidripper/planning/interactors/Clicker;
    :cond_1a
    const-string v27, "focus"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->isRequiredInput(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_1b

    .line 569
    new-instance v5, Lit/unina/androidripper/planning/interactors/Focuser;

    const-string v27, "focus"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForInput(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v5, v0}, Lit/unina/androidripper/planning/interactors/Focuser;-><init>([Ljava/lang/String;)V

    .line 570
    .restart local v5       #c:Lit/unina/androidripper/planning/interactors/Focuser;
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->EVENT_WHEN_NO_ID:Z

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lit/unina/androidripper/planning/interactors/Focuser;->setEventWhenNoId(Z)V

    .line 571
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static {v5}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addEvent([Lit/unina/androidripper/model/Interactor;)V

    .line 574
    .end local v5           #c:Lit/unina/androidripper/planning/interactors/Focuser;
    :cond_1b
    const-string v27, "setBar"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->isRequiredInput(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_1c

    .line 575
    new-instance v19, Lit/unina/androidripper/planning/interactors/Slider;

    const-string v27, "setBar"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForInput(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lit/unina/androidripper/planning/interactors/Slider;-><init>([Ljava/lang/String;)V

    .line 576
    .local v19, sl:Lit/unina/androidripper/planning/interactors/Slider;
    const/16 v27, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lit/unina/androidripper/planning/interactors/Slider;->setEventWhenNoId(Z)V

    .line 577
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v19 .. v19}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addInput([Lit/unina/androidripper/model/Interactor;)V

    .line 580
    .end local v19           #sl:Lit/unina/androidripper/planning/interactors/Slider;
    :cond_1c
    const-string v27, "editText"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->isRequiredInput(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_1d

    .line 581
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->TEXT_VALUES_FROM_DICTIONARY:Z

    if-eqz v27, :cond_23

    .line 583
    new-instance v14, Lit/unina/androidripper/planning/interactors/DictionaryValueEditor;

    const-string v27, "editText"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForInput(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v14, v0}, Lit/unina/androidripper/planning/interactors/DictionaryValueEditor;-><init>([Ljava/lang/String;)V

    .line 584
    .local v14, re:Lit/unina/androidripper/planning/interactors/DictionaryValueEditor;
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Lit/unina/androidripper/planning/interactors/DictionaryValueEditor;->setEventWhenNoId(Z)V

    .line 585
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static {v14}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addInput([Lit/unina/androidripper/model/Interactor;)V

    .line 601
    .end local v14           #re:Lit/unina/androidripper/planning/interactors/DictionaryValueEditor;
    :cond_1d
    :goto_7
    const-string v27, "writeText"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->isRequiredInput(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_1e

    .line 602
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->TEXT_VALUES_FROM_DICTIONARY:Z

    if-eqz v27, :cond_25

    .line 604
    new-instance v14, Lit/unina/androidripper/planning/interactors/DictionaryValueWriter;

    const-string v27, "writeText"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForInput(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v14, v0}, Lit/unina/androidripper/planning/interactors/DictionaryValueWriter;-><init>([Ljava/lang/String;)V

    .line 605
    .local v14, re:Lit/unina/androidripper/planning/interactors/DictionaryValueWriter;
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Lit/unina/androidripper/planning/interactors/DictionaryValueWriter;->setEventWhenNoId(Z)V

    .line 606
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static {v14}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addInput([Lit/unina/androidripper/model/Interactor;)V

    .line 622
    .end local v14           #re:Lit/unina/androidripper/planning/interactors/DictionaryValueWriter;
    :cond_1e
    :goto_8
    const-string v27, "searchText"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->isRequiredInput(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_1f

    .line 623
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->TEXT_VALUES_FROM_DICTIONARY:Z

    if-eqz v27, :cond_27

    .line 625
    new-instance v22, Lit/unina/androidripper/planning/interactors/DictionaryValueSearchWriter;

    const-string v27, "searchText"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForInput(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lit/unina/androidripper/planning/interactors/DictionaryValueSearchWriter;-><init>([Ljava/lang/String;)V

    .line 626
    .local v22, sti:Lit/unina/androidripper/planning/interactors/DictionaryValueSearchWriter;
    const/16 v27, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lit/unina/androidripper/planning/interactors/DictionaryValueSearchWriter;->setEventWhenNoId(Z)V

    .line 627
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v22 .. v22}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addInput([Lit/unina/androidripper/model/Interactor;)V

    .line 644
    .end local v22           #sti:Lit/unina/androidripper/planning/interactors/DictionaryValueSearchWriter;
    :cond_1f
    :goto_9
    const-string v27, "selectSpinnerItem"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->isRequiredInput(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_20

    .line 645
    new-instance v18, Lit/unina/androidripper/planning/interactors/RandomSpinnerSelector;

    const-string v27, "selectSpinnerItem"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForInput(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lit/unina/androidripper/planning/interactors/RandomSpinnerSelector;-><init>([Ljava/lang/String;)V

    .line 646
    .local v18, rss:Lit/unina/androidripper/planning/interactors/RandomSpinnerSelector;
    const/16 v27, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lit/unina/androidripper/planning/interactors/RandomSpinnerSelector;->setEventWhenNoId(Z)V

    .line 647
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v18 .. v18}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addInput([Lit/unina/androidripper/model/Interactor;)V

    .line 650
    .end local v18           #rss:Lit/unina/androidripper/planning/interactors/RandomSpinnerSelector;
    :cond_20
    const-string v27, "selectRadioItem"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->isRequiredInput(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_21

    .line 651
    new-instance v16, Lit/unina/androidripper/planning/interactors/RandomRadioSelector;

    const-string v27, "selectRadioItem"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForInput(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lit/unina/androidripper/planning/interactors/RandomRadioSelector;-><init>([Ljava/lang/String;)V

    .line 652
    .local v16, rrs:Lit/unina/androidripper/planning/interactors/RandomRadioSelector;
    const/16 v27, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lit/unina/androidripper/planning/interactors/RandomRadioSelector;->setEventWhenNoId(Z)V

    .line 653
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v16 .. v16}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addInput([Lit/unina/androidripper/model/Interactor;)V

    .line 656
    .end local v16           #rrs:Lit/unina/androidripper/planning/interactors/RandomRadioSelector;
    :cond_21
    const-string v27, "selectListItem"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->isRequiredInput(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_22

    .line 657
    new-instance v15, Lit/unina/androidripper/planning/interactors/RandomListSelector;

    const-string v27, "selectListItem"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForInput(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v15, v0}, Lit/unina/androidripper/planning/interactors/RandomListSelector;-><init>([Ljava/lang/String;)V

    .line 658
    .local v15, rls:Lit/unina/androidripper/planning/interactors/RandomListSelector;
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v15, v0}, Lit/unina/androidripper/planning/interactors/RandomListSelector;->setEventWhenNoId(Z)V

    .line 659
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static {v15}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addInput([Lit/unina/androidripper/model/Interactor;)V

    .line 662
    .end local v15           #rls:Lit/unina/androidripper/planning/interactors/RandomListSelector;
    :cond_22
    sget-object v3, Lit/unina/androidripper/Resources;->ADDITIONAL_INPUTS:[Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    array-length v11, v3

    const/4 v9, 0x0

    :goto_a
    if-ge v9, v11, :cond_29

    aget-object v8, v3, v9

    .line 663
    .restart local v8       #i:Lit/unina/androidripper/planning/adapters/InteractorAdapter;
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v8, v0}, Lit/unina/androidripper/planning/adapters/InteractorAdapter;->setEventWhenNoId(Z)V

    .line 664
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static {v8}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addInput([Lit/unina/androidripper/model/Interactor;)V

    .line 662
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 587
    .end local v8           #i:Lit/unina/androidripper/planning/adapters/InteractorAdapter;
    :cond_23
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->TEXT_VALUES_ID_HASH:Z

    if-eqz v27, :cond_24

    .line 589
    new-instance v14, Lit/unina/androidripper/planning/interactors/HashValueEditor;

    const-string v27, "editText"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForInput(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v14, v0}, Lit/unina/androidripper/planning/interactors/HashValueEditor;-><init>([Ljava/lang/String;)V

    .line 590
    .local v14, re:Lit/unina/androidripper/planning/interactors/HashValueEditor;
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Lit/unina/androidripper/planning/interactors/HashValueEditor;->setEventWhenNoId(Z)V

    .line 591
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static {v14}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addInput([Lit/unina/androidripper/model/Interactor;)V

    goto/16 :goto_7

    .line 595
    .end local v14           #re:Lit/unina/androidripper/planning/interactors/HashValueEditor;
    :cond_24
    new-instance v14, Lit/unina/androidripper/planning/interactors/RandomEditor;

    const-string v27, "editText"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForInput(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v14, v0}, Lit/unina/androidripper/planning/interactors/RandomEditor;-><init>([Ljava/lang/String;)V

    .line 596
    .local v14, re:Lit/unina/androidripper/planning/interactors/RandomEditor;
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Lit/unina/androidripper/planning/interactors/RandomEditor;->setEventWhenNoId(Z)V

    .line 597
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static {v14}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addInput([Lit/unina/androidripper/model/Interactor;)V

    goto/16 :goto_7

    .line 608
    .end local v14           #re:Lit/unina/androidripper/planning/interactors/RandomEditor;
    :cond_25
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->TEXT_VALUES_ID_HASH:Z

    if-eqz v27, :cond_26

    .line 610
    new-instance v14, Lit/unina/androidripper/planning/interactors/HashValueWriter;

    const-string v27, "writeText"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForInput(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v14, v0}, Lit/unina/androidripper/planning/interactors/HashValueWriter;-><init>([Ljava/lang/String;)V

    .line 611
    .local v14, re:Lit/unina/androidripper/planning/interactors/HashValueWriter;
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Lit/unina/androidripper/planning/interactors/HashValueWriter;->setEventWhenNoId(Z)V

    .line 612
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static {v14}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addInput([Lit/unina/androidripper/model/Interactor;)V

    goto/16 :goto_8

    .line 616
    .end local v14           #re:Lit/unina/androidripper/planning/interactors/HashValueWriter;
    :cond_26
    new-instance v14, Lit/unina/androidripper/planning/interactors/RandomWriter;

    const-string v27, "writeText"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForInput(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v14, v0}, Lit/unina/androidripper/planning/interactors/RandomWriter;-><init>([Ljava/lang/String;)V

    .line 617
    .local v14, re:Lit/unina/androidripper/planning/interactors/RandomWriter;
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Lit/unina/androidripper/planning/interactors/RandomWriter;->setEventWhenNoId(Z)V

    .line 618
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static {v14}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addInput([Lit/unina/androidripper/model/Interactor;)V

    goto/16 :goto_8

    .line 629
    .end local v14           #re:Lit/unina/androidripper/planning/interactors/RandomWriter;
    :cond_27
    sget-boolean v27, Lit/unina/androidripper/planning/Resources;->TEXT_VALUES_ID_HASH:Z

    if-eqz v27, :cond_28

    .line 631
    new-instance v22, Lit/unina/androidripper/planning/interactors/HashValueSearchWriter;

    const-string v27, "searchText"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForInput(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lit/unina/androidripper/planning/interactors/HashValueSearchWriter;-><init>([Ljava/lang/String;)V

    .line 632
    .local v22, sti:Lit/unina/androidripper/planning/interactors/HashValueSearchWriter;
    const/16 v27, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lit/unina/androidripper/planning/interactors/HashValueSearchWriter;->setEventWhenNoId(Z)V

    .line 633
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v22 .. v22}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addInput([Lit/unina/androidripper/model/Interactor;)V

    goto/16 :goto_9

    .line 637
    .end local v22           #sti:Lit/unina/androidripper/planning/interactors/HashValueSearchWriter;
    :cond_28
    new-instance v22, Lit/unina/androidripper/planning/interactors/RandomSearchWriter;

    const-string v27, "searchText"

    invoke-static/range {v27 .. v27}, Lit/unina/androidripper/planning/UserFactory;->typesForInput(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lit/unina/androidripper/planning/interactors/RandomSearchWriter;-><init>([Ljava/lang/String;)V

    .line 638
    .local v22, sti:Lit/unina/androidripper/planning/interactors/RandomSearchWriter;
    const/16 v27, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lit/unina/androidripper/planning/interactors/RandomSearchWriter;->setEventWhenNoId(Z)V

    .line 639
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Lit/unina/androidripper/model/Interactor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v22 .. v22}, Lit/unina/androidripper/planning/UserFactory;->addDosAndDonts(Lit/unina/androidripper/planning/adapters/InteractorAdapter;)Lit/unina/androidripper/planning/adapters/InteractorAdapter;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/UserAdapter;->addInput([Lit/unina/androidripper/model/Interactor;)V

    goto/16 :goto_9

    .line 667
    .end local v22           #sti:Lit/unina/androidripper/planning/interactors/RandomSearchWriter;
    :cond_29
    return-object v25
.end method

.method public static isRequired(Lit/unina/androidripper/planning/UserFactory$Category;Ljava/lang/String;)Z
    .locals 2
    .parameter "c"
    .parameter "interaction"

    .prologue
    .line 116
    sget-object v0, Lit/unina/androidripper/planning/UserFactory$1;->$SwitchMap$it$unina$androidripper$planning$UserFactory$Category:[I

    invoke-virtual {p0}, Lit/unina/androidripper/planning/UserFactory$Category;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 122
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 118
    :pswitch_0
    sget-object v0, Lit/unina/androidripper/planning/UserFactory;->eventToTypeMap:Lit/unina/androidripper/planning/UserFactory$InteractionMap;

    invoke-virtual {v0, p1}, Lit/unina/androidripper/planning/UserFactory$InteractionMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 120
    :pswitch_1
    sget-object v0, Lit/unina/androidripper/planning/UserFactory;->inputToTypeMap:Lit/unina/androidripper/planning/UserFactory$InteractionMap;

    invoke-virtual {v0, p1}, Lit/unina/androidripper/planning/UserFactory$InteractionMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isRequiredEvent(Ljava/lang/String;)Z
    .locals 1
    .parameter "interaction"

    .prologue
    .line 108
    sget-object v0, Lit/unina/androidripper/planning/UserFactory$Category;->EVENT:Lit/unina/androidripper/planning/UserFactory$Category;

    invoke-static {v0, p0}, Lit/unina/androidripper/planning/UserFactory;->isRequired(Lit/unina/androidripper/planning/UserFactory$Category;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isRequiredInput(Ljava/lang/String;)Z
    .locals 1
    .parameter "interaction"

    .prologue
    .line 112
    sget-object v0, Lit/unina/androidripper/planning/UserFactory$Category;->INPUT:Lit/unina/androidripper/planning/UserFactory$Category;

    invoke-static {v0, p0}, Lit/unina/androidripper/planning/UserFactory;->isRequired(Lit/unina/androidripper/planning/UserFactory$Category;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isUserSimple()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 139
    sget v0, Lit/unina/androidripper/planning/Resources;->MAX_TASKS_PER_EVENT:I

    .line 140
    .local v0, m:I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static resetEvents()V
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lit/unina/androidripper/planning/UserFactory;->eventToTypeMap:Lit/unina/androidripper/planning/UserFactory$InteractionMap;

    invoke-virtual {v0}, Lit/unina/androidripper/planning/UserFactory$InteractionMap;->clear()V

    .line 37
    return-void
.end method

.method public static resetInputs()V
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lit/unina/androidripper/planning/UserFactory;->inputToTypeMap:Lit/unina/androidripper/planning/UserFactory$InteractionMap;

    invoke-virtual {v0}, Lit/unina/androidripper/planning/UserFactory$InteractionMap;->clear()V

    .line 41
    return-void
.end method

.method public static typesForEvent(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "interaction"

    .prologue
    .line 127
    sget-object v0, Lit/unina/androidripper/planning/UserFactory;->eventToTypeMap:Lit/unina/androidripper/planning/UserFactory$InteractionMap;

    invoke-virtual {v0, p0}, Lit/unina/androidripper/planning/UserFactory$InteractionMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static typesForInput(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "interaction"

    .prologue
    .line 131
    sget-object v0, Lit/unina/androidripper/planning/UserFactory;->inputToTypeMap:Lit/unina/androidripper/planning/UserFactory$InteractionMap;

    invoke-virtual {v0, p0}, Lit/unina/androidripper/planning/UserFactory$InteractionMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
