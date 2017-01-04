.class public Lit/unina/androidripper/planning/SimpleReflectionPlanner;
.super Lit/unina/androidripper/planning/SimplePlanner;
.source "SimpleReflectionPlanner.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "androidripper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lit/unina/androidripper/planning/SimplePlanner;-><init>()V

    .line 28
    return-void
.end method

.method private getEventsToHandle(Lcom/nofatclips/androidtesting/model/ActivityState;Lcom/nofatclips/androidtesting/model/WidgetState;)Ljava/util/Collection;
    .locals 5
    .parameter "a"
    .parameter "w"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nofatclips/androidtesting/model/ActivityState;",
            "Lcom/nofatclips/androidtesting/model/WidgetState;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/nofatclips/androidtesting/model/UserEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v0, eventTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p2}, Lcom/nofatclips/androidtesting/model/WidgetState;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/nofatclips/androidtesting/model/ActivityState;->getSupportedEventsByWidgetUniqueId(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nofatclips/androidtesting/model/SupportedEvent;

    .line 35
    .local v1, evt:Lcom/nofatclips/androidtesting/model/SupportedEvent;
    invoke-interface {v1}, Lcom/nofatclips/androidtesting/model/SupportedEvent;->getEventType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 36
    invoke-interface {v1}, Lcom/nofatclips/androidtesting/model/SupportedEvent;->getEventType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 38
    .end local v1           #evt:Lcom/nofatclips/androidtesting/model/SupportedEvent;
    :cond_1
    invoke-interface {p2}, Lcom/nofatclips/androidtesting/model/WidgetState;->getSimpleType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lit/unina/androidripper/planning/SimpleReflectionPlanner;->getUserForWidgetAndEvents(Ljava/lang/String;Ljava/util/ArrayList;)Lit/unina/androidripper/model/EventHandler;

    move-result-object v3

    invoke-interface {v3, p2}, Lit/unina/androidripper/model/EventHandler;->handleEvent(Lcom/nofatclips/androidtesting/model/WidgetState;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public addPlanForActivityWidgets(Lit/unina/androidripper/model/Plan;Lcom/nofatclips/androidtesting/model/ActivityState;ZZ)V
    .locals 11
    .parameter "p"
    .parameter "a"
    .parameter "allowSwapTabs"
    .parameter "allowGoBack"

    .prologue
    .line 44
    invoke-virtual {p0}, Lit/unina/androidripper/planning/SimpleReflectionPlanner;->getEventFilter()Lit/unina/androidripper/model/Filter;

    move-result-object v10

    invoke-interface {v10}, Lit/unina/androidripper/model/Filter;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/nofatclips/androidtesting/model/WidgetState;

    .line 46
    .local v9, w:Lcom/nofatclips/androidtesting/model/WidgetState;
    invoke-direct {p0, p2, v9}, Lit/unina/androidripper/planning/SimpleReflectionPlanner;->getEventsToHandle(Lcom/nofatclips/androidtesting/model/ActivityState;Lcom/nofatclips/androidtesting/model/WidgetState;)Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nofatclips/androidtesting/model/UserEvent;

    .line 47
    .local v1, evt:Lcom/nofatclips/androidtesting/model/UserEvent;
    if-eqz v1, :cond_1

    .line 48
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v7, inputs:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/nofatclips/androidtesting/model/UserInput;>;"
    invoke-virtual {p0}, Lit/unina/androidripper/planning/SimpleReflectionPlanner;->getInputFilter()Lit/unina/androidripper/model/Filter;

    move-result-object v10

    invoke-interface {v10}, Lit/unina/androidripper/model/Filter;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nofatclips/androidtesting/model/WidgetState;

    .line 50
    .local v2, formWidget:Lcom/nofatclips/androidtesting/model/WidgetState;
    invoke-virtual {p0}, Lit/unina/androidripper/planning/SimpleReflectionPlanner;->getFormFiller()Lit/unina/androidripper/model/InputHandler;

    move-result-object v10

    invoke-interface {v10, v2}, Lit/unina/androidripper/model/InputHandler;->handleInput(Lcom/nofatclips/androidtesting/model/WidgetState;)Ljava/util/List;

    move-result-object v0

    .line 51
    .local v0, alternatives:Ljava/util/List;,"Ljava/util/List<Lcom/nofatclips/androidtesting/model/UserInput;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/nofatclips/androidtesting/model/UserInput;

    move-object v6, v10

    .line 52
    .local v6, inp:Lcom/nofatclips/androidtesting/model/UserInput;
    :goto_2
    if-eqz v6, :cond_2

    .line 53
    invoke-interface {v7, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 51
    .end local v6           #inp:Lcom/nofatclips/androidtesting/model/UserInput;
    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    .line 56
    .end local v0           #alternatives:Ljava/util/List;,"Ljava/util/List<Lcom/nofatclips/androidtesting/model/UserInput;>;"
    .end local v2           #formWidget:Lcom/nofatclips/androidtesting/model/WidgetState;
    :cond_4
    invoke-virtual {p0}, Lit/unina/androidripper/planning/SimpleReflectionPlanner;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v10

    invoke-interface {v10, p2, v7, v1}, Lit/unina/androidripper/model/Abstractor;->createStep(Lcom/nofatclips/androidtesting/model/ActivityState;Ljava/util/Collection;Lcom/nofatclips/androidtesting/model/UserEvent;)Lcom/nofatclips/androidtesting/model/Transition;

    move-result-object v8

    .line 57
    .local v8, t:Lcom/nofatclips/androidtesting/model/Transition;
    invoke-virtual {p1, v8}, Lit/unina/androidripper/model/Plan;->addTask(Lcom/nofatclips/androidtesting/model/Transition;)Z

    goto :goto_0

    .line 60
    .end local v1           #evt:Lcom/nofatclips/androidtesting/model/UserEvent;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v7           #inputs:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/nofatclips/androidtesting/model/UserInput;>;"
    .end local v8           #t:Lcom/nofatclips/androidtesting/model/Transition;
    .end local v9           #w:Lcom/nofatclips/androidtesting/model/WidgetState;
    :cond_5
    return-void
.end method

.method public getPlanForActivity(Lcom/nofatclips/androidtesting/model/ActivityState;ZZ)Lit/unina/androidripper/model/Plan;
    .locals 20
    .parameter "a"
    .parameter "allowSwapTabs"
    .parameter "allowGoBack"

    .prologue
    .line 66
    const-string v17, "androidripper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Planning for new Activity "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface/range {p1 .. p1}, Lcom/nofatclips/androidtesting/model/ActivityState;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v14, Lit/unina/androidripper/model/Plan;

    invoke-direct {v14}, Lit/unina/androidripper/model/Plan;-><init>()V

    .line 68
    .local v14, p:Lit/unina/androidripper/model/Plan;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v14, v1, v2, v3}, Lit/unina/androidripper/planning/SimpleReflectionPlanner;->addPlanForActivityWidgets(Lit/unina/androidripper/model/Plan;Lcom/nofatclips/androidtesting/model/ActivityState;ZZ)V

    .line 74
    sget-boolean v4, Lit/unina/androidripper/planning/Resources;->BACK_BUTTON_EVENT:Z

    .line 75
    .local v4, BACK_BUTTON_EVENT:Z
    const/4 v5, 0x0

    .line 76
    .local v5, MENU_EVENTS:Z
    sget-boolean v7, Lit/unina/androidripper/planning/Resources;->SCROLL_DOWN_EVENT:Z

    .line 77
    .local v7, SCROLL_DOWN_EVENT:Z
    sget-boolean v6, Lit/unina/androidripper/planning/Resources;->ORIENTATION_EVENTS:Z

    .line 78
    .local v6, ORIENTATION_EVENTS:Z
    const/4 v8, 0x0

    .line 82
    .local v8, SUPPORTS_KEY_EVENTS:Z
    if-eqz v4, :cond_0

    if-eqz p3, :cond_0

    .line 83
    invoke-virtual/range {p0 .. p0}, Lit/unina/androidripper/planning/SimpleReflectionPlanner;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v17

    const/16 v18, 0x0

    const-string v19, "back"

    invoke-interface/range {v17 .. v19}, Lit/unina/androidripper/model/Abstractor;->createEvent(Lcom/nofatclips/androidtesting/model/WidgetState;Ljava/lang/String;)Lcom/nofatclips/androidtesting/model/UserEvent;

    move-result-object v10

    .line 84
    .local v10, evt:Lcom/nofatclips/androidtesting/model/UserEvent;
    invoke-virtual/range {p0 .. p0}, Lit/unina/androidripper/planning/SimpleReflectionPlanner;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v17

    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2, v10}, Lit/unina/androidripper/model/Abstractor;->createStep(Lcom/nofatclips/androidtesting/model/ActivityState;Ljava/util/Collection;Lcom/nofatclips/androidtesting/model/UserEvent;)Lcom/nofatclips/androidtesting/model/Transition;

    move-result-object v16

    .line 85
    .local v16, t:Lcom/nofatclips/androidtesting/model/Transition;
    const-string v17, "androidripper"

    const-string v18, "Created trace to press the back button"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lit/unina/androidripper/model/Plan;->addTask(Lcom/nofatclips/androidtesting/model/Transition;)Z

    .line 89
    .end local v10           #evt:Lcom/nofatclips/androidtesting/model/UserEvent;
    .end local v16           #t:Lcom/nofatclips/androidtesting/model/Transition;
    :cond_0
    if-eqz v5, :cond_1

    .line 90
    invoke-virtual/range {p0 .. p0}, Lit/unina/androidripper/planning/SimpleReflectionPlanner;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v17

    const/16 v18, 0x0

    const-string v19, "openMenu"

    invoke-interface/range {v17 .. v19}, Lit/unina/androidripper/model/Abstractor;->createEvent(Lcom/nofatclips/androidtesting/model/WidgetState;Ljava/lang/String;)Lcom/nofatclips/androidtesting/model/UserEvent;

    move-result-object v10

    .line 91
    .restart local v10       #evt:Lcom/nofatclips/androidtesting/model/UserEvent;
    invoke-virtual/range {p0 .. p0}, Lit/unina/androidripper/planning/SimpleReflectionPlanner;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v17

    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2, v10}, Lit/unina/androidripper/model/Abstractor;->createStep(Lcom/nofatclips/androidtesting/model/ActivityState;Ljava/util/Collection;Lcom/nofatclips/androidtesting/model/UserEvent;)Lcom/nofatclips/androidtesting/model/Transition;

    move-result-object v16

    .line 92
    .restart local v16       #t:Lcom/nofatclips/androidtesting/model/Transition;
    const-string v17, "androidripper"

    const-string v18, "Created trace to press the menu button"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lit/unina/androidripper/model/Plan;->addTask(Lcom/nofatclips/androidtesting/model/Transition;)Z

    .line 97
    .end local v10           #evt:Lcom/nofatclips/androidtesting/model/UserEvent;
    .end local v16           #t:Lcom/nofatclips/androidtesting/model/Transition;
    :cond_1
    if-eqz v7, :cond_2

    .line 98
    invoke-virtual/range {p0 .. p0}, Lit/unina/androidripper/planning/SimpleReflectionPlanner;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v17

    const/16 v18, 0x0

    const-string v19, "scrollDown"

    invoke-interface/range {v17 .. v19}, Lit/unina/androidripper/model/Abstractor;->createEvent(Lcom/nofatclips/androidtesting/model/WidgetState;Ljava/lang/String;)Lcom/nofatclips/androidtesting/model/UserEvent;

    move-result-object v10

    .line 99
    .restart local v10       #evt:Lcom/nofatclips/androidtesting/model/UserEvent;
    invoke-virtual/range {p0 .. p0}, Lit/unina/androidripper/planning/SimpleReflectionPlanner;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v17

    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2, v10}, Lit/unina/androidripper/model/Abstractor;->createStep(Lcom/nofatclips/androidtesting/model/ActivityState;Ljava/util/Collection;Lcom/nofatclips/androidtesting/model/UserEvent;)Lcom/nofatclips/androidtesting/model/Transition;

    move-result-object v16

    .line 100
    .restart local v16       #t:Lcom/nofatclips/androidtesting/model/Transition;
    const-string v17, "androidripper"

    const-string v18, "Created trace to perform scrolling down"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lit/unina/androidripper/model/Plan;->addTask(Lcom/nofatclips/androidtesting/model/Transition;)Z

    .line 104
    .end local v10           #evt:Lcom/nofatclips/androidtesting/model/UserEvent;
    .end local v16           #t:Lcom/nofatclips/androidtesting/model/Transition;
    :cond_2
    if-eqz v6, :cond_3

    .line 105
    invoke-virtual/range {p0 .. p0}, Lit/unina/androidripper/planning/SimpleReflectionPlanner;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v17

    const/16 v18, 0x0

    const-string v19, "changeOrientation"

    invoke-interface/range {v17 .. v19}, Lit/unina/androidripper/model/Abstractor;->createEvent(Lcom/nofatclips/androidtesting/model/WidgetState;Ljava/lang/String;)Lcom/nofatclips/androidtesting/model/UserEvent;

    move-result-object v10

    .line 106
    .restart local v10       #evt:Lcom/nofatclips/androidtesting/model/UserEvent;
    invoke-virtual/range {p0 .. p0}, Lit/unina/androidripper/planning/SimpleReflectionPlanner;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v17

    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2, v10}, Lit/unina/androidripper/model/Abstractor;->createStep(Lcom/nofatclips/androidtesting/model/ActivityState;Ljava/util/Collection;Lcom/nofatclips/androidtesting/model/UserEvent;)Lcom/nofatclips/androidtesting/model/Transition;

    move-result-object v16

    .line 107
    .restart local v16       #t:Lcom/nofatclips/androidtesting/model/Transition;
    const-string v17, "androidripper"

    const-string v18, "Created trace to change orientation"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lit/unina/androidripper/model/Plan;->addTask(Lcom/nofatclips/androidtesting/model/Transition;)Z

    .line 111
    .end local v10           #evt:Lcom/nofatclips/androidtesting/model/UserEvent;
    .end local v16           #t:Lcom/nofatclips/androidtesting/model/Transition;
    :cond_3
    if-eqz v8, :cond_4

    sget-object v17, Lit/unina/androidripper/planning/Resources;->KEY_EVENTS:[I

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    if-lez v17, :cond_4

    .line 112
    sget-object v9, Lit/unina/androidripper/planning/Resources;->KEY_EVENTS:[I

    .local v9, arr$:[I
    array-length v13, v9

    .local v13, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_0
    if-ge v11, v13, :cond_4

    aget v12, v9, v11

    .line 113
    .local v12, keyCode:I
    invoke-virtual/range {p0 .. p0}, Lit/unina/androidripper/planning/SimpleReflectionPlanner;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v17

    const/16 v18, 0x0

    const-string v19, "pressKey"

    invoke-interface/range {v17 .. v19}, Lit/unina/androidripper/model/Abstractor;->createEvent(Lcom/nofatclips/androidtesting/model/WidgetState;Ljava/lang/String;)Lcom/nofatclips/androidtesting/model/UserEvent;

    move-result-object v10

    .line 114
    .restart local v10       #evt:Lcom/nofatclips/androidtesting/model/UserEvent;
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Lcom/nofatclips/androidtesting/model/UserEvent;->setValue(Ljava/lang/String;)V

    .line 115
    invoke-virtual/range {p0 .. p0}, Lit/unina/androidripper/planning/SimpleReflectionPlanner;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v17

    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2, v10}, Lit/unina/androidripper/model/Abstractor;->createStep(Lcom/nofatclips/androidtesting/model/ActivityState;Ljava/util/Collection;Lcom/nofatclips/androidtesting/model/UserEvent;)Lcom/nofatclips/androidtesting/model/Transition;

    move-result-object v16

    .line 116
    .restart local v16       #t:Lcom/nofatclips/androidtesting/model/Transition;
    const-string v17, "androidripper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Created trace to perform key press (key code: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lit/unina/androidripper/model/Plan;->addTask(Lcom/nofatclips/androidtesting/model/Transition;)Z

    .line 112
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 124
    .end local v9           #arr$:[I
    .end local v10           #evt:Lcom/nofatclips/androidtesting/model/UserEvent;
    .end local v11           #i$:I
    .end local v12           #keyCode:I
    .end local v13           #len$:I
    .end local v16           #t:Lcom/nofatclips/androidtesting/model/Transition;
    :cond_4
    const-string v17, "act0"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/nofatclips/androidtesting/model/ActivityState;->getSupportedEventsByWidgetUniqueId(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/nofatclips/androidtesting/model/SupportedEvent;

    .line 126
    .local v15, se:Lcom/nofatclips/androidtesting/model/SupportedEvent;
    invoke-interface {v15}, Lcom/nofatclips/androidtesting/model/SupportedEvent;->getEventType()Ljava/lang/String;

    move-result-object v17

    const-string v18, "accelerometerSensorEvent"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 128
    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const-string v18, "accelerometerSensorEvent"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3, v14}, Lit/unina/androidripper/planning/SimpleReflectionPlanner;->addStepsForSensor(Ljava/lang/Integer;Ljava/lang/String;Lcom/nofatclips/androidtesting/model/ActivityState;Lit/unina/androidripper/model/Plan;)V

    goto :goto_1

    .line 134
    :cond_6
    invoke-interface {v15}, Lcom/nofatclips/androidtesting/model/SupportedEvent;->getEventType()Ljava/lang/String;

    move-result-object v17

    const-string v18, "orientationSensorEvent"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 136
    const/16 v17, 0x3

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const-string v18, "orientationSensorEvent"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3, v14}, Lit/unina/androidripper/planning/SimpleReflectionPlanner;->addStepsForSensor(Ljava/lang/Integer;Ljava/lang/String;Lcom/nofatclips/androidtesting/model/ActivityState;Lit/unina/androidripper/model/Plan;)V

    goto :goto_1

    .line 142
    :cond_7
    invoke-interface {v15}, Lcom/nofatclips/androidtesting/model/SupportedEvent;->getEventType()Ljava/lang/String;

    move-result-object v17

    const-string v18, "magneticFieldSensorEvent"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 144
    const/16 v17, 0x2

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const-string v18, "magneticFieldSensorEvent"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3, v14}, Lit/unina/androidripper/planning/SimpleReflectionPlanner;->addStepsForSensor(Ljava/lang/Integer;Ljava/lang/String;Lcom/nofatclips/androidtesting/model/ActivityState;Lit/unina/androidripper/model/Plan;)V

    goto :goto_1

    .line 151
    :cond_8
    invoke-interface {v15}, Lcom/nofatclips/androidtesting/model/SupportedEvent;->getEventType()Ljava/lang/String;

    move-result-object v17

    const-string v18, "temperatureSensorEvent"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 153
    const/16 v17, 0x7

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const-string v18, "temperatureSensorEvent"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3, v14}, Lit/unina/androidripper/planning/SimpleReflectionPlanner;->addStepsForSensor(Ljava/lang/Integer;Ljava/lang/String;Lcom/nofatclips/androidtesting/model/ActivityState;Lit/unina/androidripper/model/Plan;)V

    goto/16 :goto_1

    .line 159
    :cond_9
    invoke-interface {v15}, Lcom/nofatclips/androidtesting/model/SupportedEvent;->getEventType()Ljava/lang/String;

    move-result-object v17

    const-string v18, "gpsLocationChangeEvent"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 161
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lit/unina/androidripper/planning/SimpleReflectionPlanner;->addStepsForGPS(Lcom/nofatclips/androidtesting/model/ActivityState;Lit/unina/androidripper/model/Plan;)V

    goto/16 :goto_1

    .line 164
    :cond_a
    invoke-interface {v15}, Lcom/nofatclips/androidtesting/model/SupportedEvent;->getEventType()Ljava/lang/String;

    move-result-object v17

    const-string v18, "gpsProviderDisableEvent"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 173
    invoke-interface {v15}, Lcom/nofatclips/androidtesting/model/SupportedEvent;->getEventType()Ljava/lang/String;

    move-result-object v17

    const-string v18, "incomingCallEvent"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 175
    const/4 v10, 0x0

    .line 176
    .restart local v10       #evt:Lcom/nofatclips/androidtesting/model/UserEvent;
    invoke-virtual/range {p0 .. p0}, Lit/unina/androidripper/planning/SimpleReflectionPlanner;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v17

    const/16 v18, 0x0

    const-string v19, "incomingCallEvent"

    invoke-interface/range {v17 .. v19}, Lit/unina/androidripper/model/Abstractor;->createEvent(Lcom/nofatclips/androidtesting/model/WidgetState;Ljava/lang/String;)Lcom/nofatclips/androidtesting/model/UserEvent;

    move-result-object v10

    .line 177
    invoke-virtual/range {p0 .. p0}, Lit/unina/androidripper/planning/SimpleReflectionPlanner;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v17

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2, v10}, Lit/unina/androidripper/model/Abstractor;->createStep(Lcom/nofatclips/androidtesting/model/ActivityState;Ljava/util/Collection;Lcom/nofatclips/androidtesting/model/UserEvent;)Lcom/nofatclips/androidtesting/model/Transition;

    move-result-object v16

    .line 178
    .restart local v16       #t:Lcom/nofatclips/androidtesting/model/Transition;
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lit/unina/androidripper/model/Plan;->addTask(Lcom/nofatclips/androidtesting/model/Transition;)Z

    goto/16 :goto_1

    .line 181
    .end local v10           #evt:Lcom/nofatclips/androidtesting/model/UserEvent;
    .end local v16           #t:Lcom/nofatclips/androidtesting/model/Transition;
    :cond_b
    invoke-interface {v15}, Lcom/nofatclips/androidtesting/model/SupportedEvent;->getEventType()Ljava/lang/String;

    move-result-object v17

    const-string v18, "incomingSMSEvent"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 183
    const/4 v10, 0x0

    .line 184
    .restart local v10       #evt:Lcom/nofatclips/androidtesting/model/UserEvent;
    invoke-virtual/range {p0 .. p0}, Lit/unina/androidripper/planning/SimpleReflectionPlanner;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v17

    const/16 v18, 0x0

    const-string v19, "incomingSMSEvent"

    invoke-interface/range {v17 .. v19}, Lit/unina/androidripper/model/Abstractor;->createEvent(Lcom/nofatclips/androidtesting/model/WidgetState;Ljava/lang/String;)Lcom/nofatclips/androidtesting/model/UserEvent;

    move-result-object v10

    .line 185
    invoke-virtual/range {p0 .. p0}, Lit/unina/androidripper/planning/SimpleReflectionPlanner;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v17

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2, v10}, Lit/unina/androidripper/model/Abstractor;->createStep(Lcom/nofatclips/androidtesting/model/ActivityState;Ljava/util/Collection;Lcom/nofatclips/androidtesting/model/UserEvent;)Lcom/nofatclips/androidtesting/model/Transition;

    move-result-object v16

    .line 186
    .restart local v16       #t:Lcom/nofatclips/androidtesting/model/Transition;
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lit/unina/androidripper/model/Plan;->addTask(Lcom/nofatclips/androidtesting/model/Transition;)Z

    goto/16 :goto_1

    .line 190
    .end local v10           #evt:Lcom/nofatclips/androidtesting/model/UserEvent;
    .end local v15           #se:Lcom/nofatclips/androidtesting/model/SupportedEvent;
    .end local v16           #t:Lcom/nofatclips/androidtesting/model/Transition;
    :cond_c
    return-object v14
.end method

.method public getUserForWidgetAndEvents(Ljava/lang/String;Ljava/util/ArrayList;)Lit/unina/androidripper/model/EventHandler;
    .locals 1
    .parameter "widgetType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lit/unina/androidripper/model/EventHandler;"
        }
    .end annotation

    .prologue
    .line 194
    .local p2, eventTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lit/unina/androidripper/planning/SimpleReflectionPlanner;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lit/unina/androidripper/planning/UserFactory;->getUserForEvents(Lit/unina/androidripper/model/Abstractor;Ljava/lang/String;Ljava/util/ArrayList;)Lit/unina/androidripper/model/UserAdapter;

    move-result-object v0

    return-object v0
.end method
