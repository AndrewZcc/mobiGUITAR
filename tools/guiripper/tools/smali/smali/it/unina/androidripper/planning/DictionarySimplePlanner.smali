.class public Lit/unina/androidripper/planning/DictionarySimplePlanner;
.super Lit/unina/androidripper/planning/SimplePlanner;
.source "DictionarySimplePlanner.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lit/unina/androidripper/planning/SimplePlanner;-><init>()V

    return-void
.end method


# virtual methods
.method public addPlanForActivityWidgets(Lit/unina/androidripper/model/Plan;Lcom/nofatclips/androidtesting/model/ActivityState;ZZ)V
    .locals 20
    .parameter "p"
    .parameter "a"
    .parameter "allowSwapTabs"
    .parameter "allowGoBack"

    .prologue
    .line 23
    const-string v17, "androidripper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Planning with RegExPlanner for new Activity "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface/range {p2 .. p2}, Lcom/nofatclips/androidtesting/model/ActivityState;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    const/4 v14, 0x0

    .line 27
    .local v14, nEditText:I
    invoke-interface/range {p2 .. p2}, Lcom/nofatclips/androidtesting/model/ActivityState;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/nofatclips/androidtesting/model/WidgetState;

    .line 29
    .local v16, w:Lcom/nofatclips/androidtesting/model/WidgetState;
    invoke-interface/range {v16 .. v16}, Lcom/nofatclips/androidtesting/model/WidgetState;->getSimpleType()Ljava/lang/String;

    move-result-object v17

    const-string v18, "editText"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface/range {v16 .. v16}, Lcom/nofatclips/androidtesting/model/WidgetState;->getContentType()Ljava/lang/String;

    move-result-object v17

    const-string v18, "default"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 31
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 34
    .end local v16           #w:Lcom/nofatclips/androidtesting/model/WidgetState;
    :cond_1
    const-string v17, "androidripper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "nEditText="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const/4 v4, 0x0

    .end local v8           #i$:Ljava/util/Iterator;
    .local v4, currentEditTextWrongRegExIndex:I
    :goto_1
    if-gt v4, v14, :cond_b

    .line 44
    const-string v17, "androidripper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "currentEditTextWrongRegExIndex="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual/range {p0 .. p0}, Lit/unina/androidripper/planning/DictionarySimplePlanner;->getEventFilter()Lit/unina/androidripper/model/Filter;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lit/unina/androidripper/model/Filter;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/nofatclips/androidtesting/model/WidgetState;

    .line 48
    .restart local v16       #w:Lcom/nofatclips/androidtesting/model/WidgetState;
    const/4 v3, 0x0

    .line 49
    .local v3, currentEditTextIndex:I
    invoke-virtual/range {p0 .. p0}, Lit/unina/androidripper/planning/DictionarySimplePlanner;->getUser()Lit/unina/androidripper/model/EventHandler;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lit/unina/androidripper/model/EventHandler;->handleEvent(Lcom/nofatclips/androidtesting/model/WidgetState;)Ljava/util/List;

    move-result-object v5

    .line 50
    .local v5, events:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/nofatclips/androidtesting/model/UserEvent;>;"
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nofatclips/androidtesting/model/UserEvent;

    .line 51
    .local v6, evt:Lcom/nofatclips/androidtesting/model/UserEvent;
    if-eqz v6, :cond_3

    .line 52
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v12, inputs:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/nofatclips/androidtesting/model/UserInput;>;"
    invoke-virtual/range {p0 .. p0}, Lit/unina/androidripper/planning/DictionarySimplePlanner;->getInputFilter()Lit/unina/androidripper/model/Filter;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lit/unina/androidripper/model/Filter;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nofatclips/androidtesting/model/WidgetState;

    .line 56
    .local v7, formWidget:Lcom/nofatclips/androidtesting/model/WidgetState;
    invoke-virtual/range {p0 .. p0}, Lit/unina/androidripper/planning/DictionarySimplePlanner;->getFormFiller()Lit/unina/androidripper/model/InputHandler;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v7}, Lit/unina/androidripper/model/InputHandler;->handleInput(Lcom/nofatclips/androidtesting/model/WidgetState;)Ljava/util/List;

    move-result-object v2

    .line 57
    .local v2, alternatives:Ljava/util/List;,"Ljava/util/List<Lcom/nofatclips/androidtesting/model/UserInput;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v17

    if-eqz v17, :cond_4

    .line 58
    const/4 v11, 0x0

    .line 60
    .local v11, inp:Lcom/nofatclips/androidtesting/model/UserInput;
    invoke-interface {v7}, Lcom/nofatclips/androidtesting/model/WidgetState;->getSimpleType()Ljava/lang/String;

    move-result-object v17

    const-string v18, "editText"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface {v7}, Lcom/nofatclips/androidtesting/model/WidgetState;->getContentType()Ljava/lang/String;

    move-result-object v17

    const-string v18, "default"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_7

    const/4 v13, 0x1

    .line 65
    .local v13, isNotDefaultEditText:Z
    :goto_4
    if-eqz v13, :cond_5

    .line 66
    add-int/lit8 v3, v3, 0x1

    .line 69
    :cond_5
    if-eqz v13, :cond_8

    if-ne v4, v3, :cond_8

    .line 72
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #inp:Lcom/nofatclips/androidtesting/model/UserInput;
    check-cast v11, Lcom/nofatclips/androidtesting/model/UserInput;

    .line 73
    .restart local v11       #inp:Lcom/nofatclips/androidtesting/model/UserInput;
    const-string v17, "androidripper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "edittext "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", content="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v7}, Lcom/nofatclips/androidtesting/model/WidgetState;->getContentType()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", using input="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v11}, Lcom/nofatclips/androidtesting/model/UserInput;->getValue()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :goto_5
    if-eqz v11, :cond_4

    invoke-interface {v11}, Lcom/nofatclips/androidtesting/model/UserInput;->getWidget()Lcom/nofatclips/androidtesting/model/WidgetState;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/nofatclips/androidtesting/model/WidgetState;->getUniqueId()Ljava/lang/String;

    move-result-object v17

    invoke-interface {v6}, Lcom/nofatclips/androidtesting/model/UserEvent;->getWidget()Lcom/nofatclips/androidtesting/model/WidgetState;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/nofatclips/androidtesting/model/WidgetState;->getUniqueId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface {v11}, Lcom/nofatclips/androidtesting/model/UserInput;->getType()Ljava/lang/String;

    move-result-object v17

    invoke-interface {v6}, Lcom/nofatclips/androidtesting/model/UserEvent;->getType()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 82
    :cond_6
    invoke-interface {v12, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 60
    .end local v13           #isNotDefaultEditText:Z
    :cond_7
    const/4 v13, 0x0

    goto :goto_4

    .line 78
    .restart local v13       #isNotDefaultEditText:Z
    :cond_8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #inp:Lcom/nofatclips/androidtesting/model/UserInput;
    check-cast v11, Lcom/nofatclips/androidtesting/model/UserInput;

    .restart local v11       #inp:Lcom/nofatclips/androidtesting/model/UserInput;
    goto :goto_5

    .line 86
    .end local v2           #alternatives:Ljava/util/List;,"Ljava/util/List<Lcom/nofatclips/androidtesting/model/UserInput;>;"
    .end local v7           #formWidget:Lcom/nofatclips/androidtesting/model/WidgetState;
    .end local v11           #inp:Lcom/nofatclips/androidtesting/model/UserInput;
    .end local v13           #isNotDefaultEditText:Z
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lit/unina/androidripper/planning/DictionarySimplePlanner;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1, v12, v6}, Lit/unina/androidripper/model/Abstractor;->createStep(Lcom/nofatclips/androidtesting/model/ActivityState;Ljava/util/Collection;Lcom/nofatclips/androidtesting/model/UserEvent;)Lcom/nofatclips/androidtesting/model/Transition;

    move-result-object v15

    .line 87
    .local v15, t:Lcom/nofatclips/androidtesting/model/Transition;
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lit/unina/androidripper/model/Plan;->addTask(Lcom/nofatclips/androidtesting/model/Transition;)Z

    goto/16 :goto_2

    .line 42
    .end local v3           #currentEditTextIndex:I
    .end local v5           #events:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/nofatclips/androidtesting/model/UserEvent;>;"
    .end local v6           #evt:Lcom/nofatclips/androidtesting/model/UserEvent;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v12           #inputs:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/nofatclips/androidtesting/model/UserInput;>;"
    .end local v15           #t:Lcom/nofatclips/androidtesting/model/Transition;
    .end local v16           #w:Lcom/nofatclips/androidtesting/model/WidgetState;
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 91
    :cond_b
    return-void
.end method
