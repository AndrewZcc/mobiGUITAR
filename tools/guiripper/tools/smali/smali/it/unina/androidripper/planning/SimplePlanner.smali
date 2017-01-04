.class public Lit/unina/androidripper/planning/SimplePlanner;
.super Ljava/lang/Object;
.source "SimplePlanner.java"

# interfaces
.implements Lit/unina/androidripper/model/Planner;


# static fields
.field public static final ALLOW_GO_BACK:Z = true

.field public static final ALLOW_SWAP_TAB:Z = true

.field public static final NO_GO_BACK:Z

.field public static final NO_SWAP_TAB:Z


# instance fields
.field protected abstractor:Lit/unina/androidripper/model/Abstractor;

.field protected eventFilter:Lit/unina/androidripper/model/Filter;

.field protected formFiller:Lit/unina/androidripper/model/InputHandler;

.field protected inputFilter:Lit/unina/androidripper/model/Filter;

.field protected user:Lit/unina/androidripper/model/EventHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addPlanForActivityWidgets(Lit/unina/androidripper/model/Plan;Lcom/nofatclips/androidtesting/model/ActivityState;ZZ)V
    .locals 13
    .parameter "p"
    .parameter "a"
    .parameter "allowSwapTabs"
    .parameter "allowGoBack"

    .prologue
    .line 35
    invoke-virtual {p0}, Lit/unina/androidripper/planning/SimplePlanner;->getEventFilter()Lit/unina/androidripper/model/Filter;

    move-result-object v11

    invoke-interface {v11}, Lit/unina/androidripper/model/Filter;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/nofatclips/androidtesting/model/WidgetState;

    .line 36
    .local v10, w:Lcom/nofatclips/androidtesting/model/WidgetState;
    invoke-virtual {p0}, Lit/unina/androidripper/planning/SimplePlanner;->getUser()Lit/unina/androidripper/model/EventHandler;

    move-result-object v11

    invoke-interface {v11, v10}, Lit/unina/androidripper/model/EventHandler;->handleEvent(Lcom/nofatclips/androidtesting/model/WidgetState;)Ljava/util/List;

    move-result-object v1

    .line 37
    .local v1, events:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/nofatclips/androidtesting/model/UserEvent;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nofatclips/androidtesting/model/UserEvent;

    .line 38
    .local v2, evt:Lcom/nofatclips/androidtesting/model/UserEvent;
    if-eqz v2, :cond_1

    .line 39
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v8, inputs:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/nofatclips/androidtesting/model/UserInput;>;"
    invoke-virtual {p0}, Lit/unina/androidripper/planning/SimplePlanner;->getInputFilter()Lit/unina/androidripper/model/Filter;

    move-result-object v11

    invoke-interface {v11}, Lit/unina/androidripper/model/Filter;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nofatclips/androidtesting/model/WidgetState;

    .line 41
    .local v3, formWidget:Lcom/nofatclips/androidtesting/model/WidgetState;
    invoke-virtual {p0}, Lit/unina/androidripper/planning/SimplePlanner;->getFormFiller()Lit/unina/androidripper/model/InputHandler;

    move-result-object v11

    invoke-interface {v11, v3}, Lit/unina/androidripper/model/InputHandler;->handleInput(Lcom/nofatclips/androidtesting/model/WidgetState;)Ljava/util/List;

    move-result-object v0

    .line 42
    .local v0, alternatives:Ljava/util/List;,"Ljava/util/List<Lcom/nofatclips/androidtesting/model/UserInput;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    if-eqz v11, :cond_2

    .line 43
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nofatclips/androidtesting/model/UserInput;

    .line 44
    .local v7, inp:Lcom/nofatclips/androidtesting/model/UserInput;
    if-eqz v7, :cond_2

    invoke-interface {v7}, Lcom/nofatclips/androidtesting/model/UserInput;->getWidget()Lcom/nofatclips/androidtesting/model/WidgetState;

    move-result-object v11

    invoke-interface {v11}, Lcom/nofatclips/androidtesting/model/WidgetState;->getUniqueId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2}, Lcom/nofatclips/androidtesting/model/UserEvent;->getWidget()Lcom/nofatclips/androidtesting/model/WidgetState;

    move-result-object v12

    invoke-interface {v12}, Lcom/nofatclips/androidtesting/model/WidgetState;->getUniqueId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v7}, Lcom/nofatclips/androidtesting/model/UserInput;->getType()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2}, Lcom/nofatclips/androidtesting/model/UserEvent;->getType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 45
    :cond_3
    invoke-interface {v8, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 48
    .end local v0           #alternatives:Ljava/util/List;,"Ljava/util/List<Lcom/nofatclips/androidtesting/model/UserInput;>;"
    .end local v3           #formWidget:Lcom/nofatclips/androidtesting/model/WidgetState;
    .end local v7           #inp:Lcom/nofatclips/androidtesting/model/UserInput;
    :cond_4
    invoke-virtual {p0}, Lit/unina/androidripper/planning/SimplePlanner;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v11

    invoke-interface {v11, p2, v8, v2}, Lit/unina/androidripper/model/Abstractor;->createStep(Lcom/nofatclips/androidtesting/model/ActivityState;Ljava/util/Collection;Lcom/nofatclips/androidtesting/model/UserEvent;)Lcom/nofatclips/androidtesting/model/Transition;

    move-result-object v9

    .line 49
    .local v9, t:Lcom/nofatclips/androidtesting/model/Transition;
    invoke-virtual {p1, v9}, Lit/unina/androidripper/model/Plan;->addTask(Lcom/nofatclips/androidtesting/model/Transition;)Z

    goto :goto_0

    .line 52
    .end local v1           #events:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/nofatclips/androidtesting/model/UserEvent;>;"
    .end local v2           #evt:Lcom/nofatclips/androidtesting/model/UserEvent;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v8           #inputs:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/nofatclips/androidtesting/model/UserInput;>;"
    .end local v9           #t:Lcom/nofatclips/androidtesting/model/Transition;
    .end local v10           #w:Lcom/nofatclips/androidtesting/model/WidgetState;
    :cond_5
    return-void
.end method

.method protected addStepsForGPS(Lcom/nofatclips/androidtesting/model/ActivityState;Lit/unina/androidripper/model/Plan;)V
    .locals 12
    .parameter "a"
    .parameter "p"

    .prologue
    const/4 v9, 0x0

    .line 249
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v5, inputs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nofatclips/androidtesting/model/UserInput;>;"
    sget-boolean v8, Lit/unina/androidripper/planning/Resources;->EXCLUDE_WIDGETS_INPUTS_IN_GPS_EVENTS:Z

    if-nez v8, :cond_2

    .line 253
    invoke-virtual {p0}, Lit/unina/androidripper/planning/SimplePlanner;->getInputFilter()Lit/unina/androidripper/model/Filter;

    move-result-object v8

    invoke-interface {v8}, Lit/unina/androidripper/model/Filter;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nofatclips/androidtesting/model/WidgetState;

    .line 254
    .local v2, formWidget:Lcom/nofatclips/androidtesting/model/WidgetState;
    invoke-virtual {p0}, Lit/unina/androidripper/planning/SimplePlanner;->getFormFiller()Lit/unina/androidripper/model/InputHandler;

    move-result-object v8

    invoke-interface {v8, v2}, Lit/unina/androidripper/model/InputHandler;->handleInput(Lcom/nofatclips/androidtesting/model/WidgetState;)Ljava/util/List;

    move-result-object v0

    .line 255
    .local v0, alternatives:Ljava/util/List;,"Ljava/util/List<Lcom/nofatclips/androidtesting/model/UserInput;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/nofatclips/androidtesting/model/UserInput;

    move-object v4, v8

    .line 256
    .local v4, inp:Lcom/nofatclips/androidtesting/model/UserInput;
    :goto_1
    if-eqz v4, :cond_0

    .line 257
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v4           #inp:Lcom/nofatclips/androidtesting/model/UserInput;
    :cond_1
    move-object v4, v9

    .line 255
    goto :goto_1

    .line 262
    .end local v0           #alternatives:Ljava/util/List;,"Ljava/util/List<Lcom/nofatclips/androidtesting/model/UserInput;>;"
    .end local v2           #formWidget:Lcom/nofatclips/androidtesting/model/WidgetState;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_2
    const/4 v1, 0x0

    .line 263
    .local v1, evt:Lcom/nofatclips/androidtesting/model/UserEvent;
    const/4 v7, 0x0

    .line 266
    .local v7, t:Lcom/nofatclips/androidtesting/model/Transition;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lit/unina/androidripper/planning/sensors_utils/GpsValuesGenerator;->getRandomLatitude()D

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "|"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lit/unina/androidripper/planning/sensors_utils/GpsValuesGenerator;->getRandomLongitude()D

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "|"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lit/unina/androidripper/planning/sensors_utils/GpsValuesGenerator;->getRandomAltitude()D

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 269
    .local v6, locationInputValueStr:Ljava/lang/String;
    invoke-virtual {p0}, Lit/unina/androidripper/planning/SimplePlanner;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v8

    const-string v10, "gpsLocationChangeEvent"

    invoke-interface {v8, v9, v10}, Lit/unina/androidripper/model/Abstractor;->createEvent(Lcom/nofatclips/androidtesting/model/WidgetState;Ljava/lang/String;)Lcom/nofatclips/androidtesting/model/UserEvent;

    move-result-object v1

    .line 270
    invoke-interface {v1, v6}, Lcom/nofatclips/androidtesting/model/UserEvent;->setValue(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0}, Lit/unina/androidripper/planning/SimplePlanner;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v8

    invoke-interface {v8, p1, v5, v1}, Lit/unina/androidripper/model/Abstractor;->createStep(Lcom/nofatclips/androidtesting/model/ActivityState;Ljava/util/Collection;Lcom/nofatclips/androidtesting/model/UserEvent;)Lcom/nofatclips/androidtesting/model/Transition;

    move-result-object v7

    .line 272
    invoke-virtual {p2, v7}, Lit/unina/androidripper/model/Plan;->addTask(Lcom/nofatclips/androidtesting/model/Transition;)Z

    .line 275
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lit/unina/androidripper/planning/sensors_utils/GpsValuesGenerator;->getRandomPositiveLatitude()D

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "|"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lit/unina/androidripper/planning/sensors_utils/GpsValuesGenerator;->getRandomPositiveLongitude()D

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "|"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lit/unina/androidripper/planning/sensors_utils/GpsValuesGenerator;->getRandomPositiveAltitude()D

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 278
    invoke-virtual {p0}, Lit/unina/androidripper/planning/SimplePlanner;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v8

    const-string v10, "gpsLocationChangeEvent"

    invoke-interface {v8, v9, v10}, Lit/unina/androidripper/model/Abstractor;->createEvent(Lcom/nofatclips/androidtesting/model/WidgetState;Ljava/lang/String;)Lcom/nofatclips/androidtesting/model/UserEvent;

    move-result-object v1

    .line 279
    invoke-interface {v1, v6}, Lcom/nofatclips/androidtesting/model/UserEvent;->setValue(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p0}, Lit/unina/androidripper/planning/SimplePlanner;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v8

    invoke-interface {v8, p1, v5, v1}, Lit/unina/androidripper/model/Abstractor;->createStep(Lcom/nofatclips/androidtesting/model/ActivityState;Ljava/util/Collection;Lcom/nofatclips/androidtesting/model/UserEvent;)Lcom/nofatclips/androidtesting/model/Transition;

    move-result-object v7

    .line 281
    invoke-virtual {p2, v7}, Lit/unina/androidripper/model/Plan;->addTask(Lcom/nofatclips/androidtesting/model/Transition;)Z

    .line 284
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lit/unina/androidripper/planning/sensors_utils/GpsValuesGenerator;->getRandomNegativeLatitude()D

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "|"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lit/unina/androidripper/planning/sensors_utils/GpsValuesGenerator;->getRandomNegativeLongitude()D

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "|"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lit/unina/androidripper/planning/sensors_utils/GpsValuesGenerator;->getRandomNegativeAltitude()D

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 287
    invoke-virtual {p0}, Lit/unina/androidripper/planning/SimplePlanner;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v8

    const-string v10, "gpsLocationChangeEvent"

    invoke-interface {v8, v9, v10}, Lit/unina/androidripper/model/Abstractor;->createEvent(Lcom/nofatclips/androidtesting/model/WidgetState;Ljava/lang/String;)Lcom/nofatclips/androidtesting/model/UserEvent;

    move-result-object v1

    .line 288
    invoke-interface {v1, v6}, Lcom/nofatclips/androidtesting/model/UserEvent;->setValue(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0}, Lit/unina/androidripper/planning/SimplePlanner;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v8

    invoke-interface {v8, p1, v5, v1}, Lit/unina/androidripper/model/Abstractor;->createStep(Lcom/nofatclips/androidtesting/model/ActivityState;Ljava/util/Collection;Lcom/nofatclips/androidtesting/model/UserEvent;)Lcom/nofatclips/androidtesting/model/Transition;

    move-result-object v7

    .line 290
    invoke-virtual {p2, v7}, Lit/unina/androidripper/model/Plan;->addTask(Lcom/nofatclips/androidtesting/model/Transition;)Z

    .line 293
    const-string v6, "0|0|0"

    .line 294
    invoke-virtual {p0}, Lit/unina/androidripper/planning/SimplePlanner;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v8

    const-string v10, "gpsLocationChangeEvent"

    invoke-interface {v8, v9, v10}, Lit/unina/androidripper/model/Abstractor;->createEvent(Lcom/nofatclips/androidtesting/model/WidgetState;Ljava/lang/String;)Lcom/nofatclips/androidtesting/model/UserEvent;

    move-result-object v1

    .line 295
    invoke-interface {v1, v6}, Lcom/nofatclips/androidtesting/model/UserEvent;->setValue(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Lit/unina/androidripper/planning/SimplePlanner;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v8

    invoke-interface {v8, p1, v5, v1}, Lit/unina/androidripper/model/Abstractor;->createStep(Lcom/nofatclips/androidtesting/model/ActivityState;Ljava/util/Collection;Lcom/nofatclips/androidtesting/model/UserEvent;)Lcom/nofatclips/androidtesting/model/Transition;

    move-result-object v7

    .line 297
    invoke-virtual {p2, v7}, Lit/unina/androidripper/model/Plan;->addTask(Lcom/nofatclips/androidtesting/model/Transition;)Z

    .line 298
    return-void
.end method

.method protected addStepsForSensor(Ljava/lang/Integer;Ljava/lang/String;Lcom/nofatclips/androidtesting/model/ActivityState;Lit/unina/androidripper/model/Plan;)V
    .locals 15
    .parameter "SENSOR_TYPE"
    .parameter "eventType"
    .parameter "a"
    .parameter "p"

    .prologue
    .line 188
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v7, inputs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nofatclips/androidtesting/model/UserInput;>;"
    sget-boolean v13, Lit/unina/androidripper/planning/Resources;->EXCLUDE_WIDGETS_INPUTS_IN_SENSORS_EVENTS:Z

    if-nez v13, :cond_2

    .line 192
    invoke-virtual {p0}, Lit/unina/androidripper/planning/SimplePlanner;->getInputFilter()Lit/unina/androidripper/model/Filter;

    move-result-object v13

    invoke-interface {v13}, Lit/unina/androidripper/model/Filter;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nofatclips/androidtesting/model/WidgetState;

    .line 193
    .local v3, formWidget:Lcom/nofatclips/androidtesting/model/WidgetState;
    invoke-virtual {p0}, Lit/unina/androidripper/planning/SimplePlanner;->getFormFiller()Lit/unina/androidripper/model/InputHandler;

    move-result-object v13

    invoke-interface {v13, v3}, Lit/unina/androidripper/model/InputHandler;->handleInput(Lcom/nofatclips/androidtesting/model/WidgetState;)Ljava/util/List;

    move-result-object v1

    .line 194
    .local v1, alternatives:Ljava/util/List;,"Ljava/util/List<Lcom/nofatclips/androidtesting/model/UserInput;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/nofatclips/androidtesting/model/UserInput;

    move-object v6, v13

    .line 195
    .local v6, inp:Lcom/nofatclips/androidtesting/model/UserInput;
    :goto_1
    if-eqz v6, :cond_0

    .line 196
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 194
    .end local v6           #inp:Lcom/nofatclips/androidtesting/model/UserInput;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 201
    .end local v1           #alternatives:Ljava/util/List;,"Ljava/util/List<Lcom/nofatclips/androidtesting/model/UserInput;>;"
    .end local v3           #formWidget:Lcom/nofatclips/androidtesting/model/WidgetState;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Lit/unina/androidripper/planning/sensors_utils/SensorValuesGenerator;->generateSensorValues(I)[F

    move-result-object v10

    .line 202
    .local v10, randomInputValues:[F
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Lit/unina/androidripper/planning/sensors_utils/SensorValuesGenerator;->generateSensorValues(I)[F

    move-result-object v9

    .line 203
    .local v9, positiveRandomInputValues:[F
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Lit/unina/androidripper/planning/sensors_utils/SensorValuesGenerator;->generateSensorValues(I)[F

    move-result-object v8

    .line 205
    .local v8, negativeRandomInputValues:[F
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    const/4 v13, 0x3

    if-ge v4, v13, :cond_3

    .line 206
    const/4 v13, 0x0

    aget v13, v9, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    aput v13, v9, v4

    .line 205
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 208
    :cond_3
    const/4 v4, 0x0

    :goto_3
    const/4 v13, 0x3

    if-ge v4, v13, :cond_4

    .line 209
    const/high16 v13, -0x4080

    const/4 v14, 0x0

    aget v14, v9, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    mul-float/2addr v13, v14

    aput v13, v8, v4

    .line 208
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 211
    :cond_4
    const/4 v2, 0x0

    .line 212
    .local v2, evt:Lcom/nofatclips/androidtesting/model/UserEvent;
    const/4 v12, 0x0

    .line 214
    .local v12, t:Lcom/nofatclips/androidtesting/model/Transition;
    const/4 v11, 0x0

    .line 217
    .local v11, sensorInputValueStr:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x0

    aget v14, v10, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x1

    aget v14, v10, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x2

    aget v14, v10, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 218
    invoke-virtual {p0}, Lit/unina/androidripper/planning/SimplePlanner;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-interface {v13, v14, v0}, Lit/unina/androidripper/model/Abstractor;->createEvent(Lcom/nofatclips/androidtesting/model/WidgetState;Ljava/lang/String;)Lcom/nofatclips/androidtesting/model/UserEvent;

    move-result-object v2

    .line 219
    invoke-interface {v2, v11}, Lcom/nofatclips/androidtesting/model/UserEvent;->setValue(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lit/unina/androidripper/planning/SimplePlanner;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-interface {v13, v0, v7, v2}, Lit/unina/androidripper/model/Abstractor;->createStep(Lcom/nofatclips/androidtesting/model/ActivityState;Ljava/util/Collection;Lcom/nofatclips/androidtesting/model/UserEvent;)Lcom/nofatclips/androidtesting/model/Transition;

    move-result-object v12

    .line 221
    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Lit/unina/androidripper/model/Plan;->addTask(Lcom/nofatclips/androidtesting/model/Transition;)Z

    .line 224
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x0

    aget v14, v9, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x1

    aget v14, v9, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x2

    aget v14, v9, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 225
    invoke-virtual {p0}, Lit/unina/androidripper/planning/SimplePlanner;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-interface {v13, v14, v0}, Lit/unina/androidripper/model/Abstractor;->createEvent(Lcom/nofatclips/androidtesting/model/WidgetState;Ljava/lang/String;)Lcom/nofatclips/androidtesting/model/UserEvent;

    move-result-object v2

    .line 226
    invoke-interface {v2, v11}, Lcom/nofatclips/androidtesting/model/UserEvent;->setValue(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lit/unina/androidripper/planning/SimplePlanner;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-interface {v13, v0, v7, v2}, Lit/unina/androidripper/model/Abstractor;->createStep(Lcom/nofatclips/androidtesting/model/ActivityState;Ljava/util/Collection;Lcom/nofatclips/androidtesting/model/UserEvent;)Lcom/nofatclips/androidtesting/model/Transition;

    move-result-object v12

    .line 228
    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Lit/unina/androidripper/model/Plan;->addTask(Lcom/nofatclips/androidtesting/model/Transition;)Z

    .line 231
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x0

    aget v14, v8, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x1

    aget v14, v8, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x2

    aget v14, v8, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 232
    invoke-virtual {p0}, Lit/unina/androidripper/planning/SimplePlanner;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-interface {v13, v14, v0}, Lit/unina/androidripper/model/Abstractor;->createEvent(Lcom/nofatclips/androidtesting/model/WidgetState;Ljava/lang/String;)Lcom/nofatclips/androidtesting/model/UserEvent;

    move-result-object v2

    .line 233
    invoke-interface {v2, v11}, Lcom/nofatclips/androidtesting/model/UserEvent;->setValue(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Lit/unina/androidripper/planning/SimplePlanner;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-interface {v13, v0, v7, v2}, Lit/unina/androidripper/model/Abstractor;->createStep(Lcom/nofatclips/androidtesting/model/ActivityState;Ljava/util/Collection;Lcom/nofatclips/androidtesting/model/UserEvent;)Lcom/nofatclips/androidtesting/model/Transition;

    move-result-object v12

    .line 235
    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Lit/unina/androidripper/model/Plan;->addTask(Lcom/nofatclips/androidtesting/model/Transition;)Z

    .line 238
    const-string v11, "0|0|0"

    .line 239
    invoke-virtual {p0}, Lit/unina/androidripper/planning/SimplePlanner;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-interface {v13, v14, v0}, Lit/unina/androidripper/model/Abstractor;->createEvent(Lcom/nofatclips/androidtesting/model/WidgetState;Ljava/lang/String;)Lcom/nofatclips/androidtesting/model/UserEvent;

    move-result-object v2

    .line 240
    invoke-interface {v2, v11}, Lcom/nofatclips/androidtesting/model/UserEvent;->setValue(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Lit/unina/androidripper/planning/SimplePlanner;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-interface {v13, v0, v7, v2}, Lit/unina/androidripper/model/Abstractor;->createStep(Lcom/nofatclips/androidtesting/model/ActivityState;Ljava/util/Collection;Lcom/nofatclips/androidtesting/model/UserEvent;)Lcom/nofatclips/androidtesting/model/Transition;

    move-result-object v12

    .line 242
    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Lit/unina/androidripper/model/Plan;->addTask(Lcom/nofatclips/androidtesting/model/Transition;)Z

    .line 245
    return-void
.end method

.method public getAbstractor()Lit/unina/androidripper/model/Abstractor;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lit/unina/androidripper/planning/SimplePlanner;->abstractor:Lit/unina/androidripper/model/Abstractor;

    return-object v0
.end method

.method public getEventFilter()Lit/unina/androidripper/model/Filter;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lit/unina/androidripper/planning/SimplePlanner;->eventFilter:Lit/unina/androidripper/model/Filter;

    return-object v0
.end method

.method public getFormFiller()Lit/unina/androidripper/model/InputHandler;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lit/unina/androidripper/planning/SimplePlanner;->formFiller:Lit/unina/androidripper/model/InputHandler;

    return-object v0
.end method

.method public getInputFilter()Lit/unina/androidripper/model/Filter;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lit/unina/androidripper/planning/SimplePlanner;->inputFilter:Lit/unina/androidripper/model/Filter;

    return-object v0
.end method

.method public getPlanForActivity(Lcom/nofatclips/androidtesting/model/ActivityState;)Lit/unina/androidripper/model/Plan;
    .locals 2
    .parameter "a"

    .prologue
    const/4 v1, 0x1

    .line 26
    sget-boolean v0, Lit/unina/androidripper/planning/Resources;->TAB_EVENTS_START_ONLY:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lit/unina/androidripper/planning/SimplePlanner;->getPlanForActivity(Lcom/nofatclips/androidtesting/model/ActivityState;ZZ)Lit/unina/androidripper/model/Plan;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPlanForActivity(Lcom/nofatclips/androidtesting/model/ActivityState;ZZ)Lit/unina/androidripper/model/Plan;
    .locals 12
    .parameter "a"
    .parameter "allowSwapTabs"
    .parameter "allowGoBack"

    .prologue
    const/4 v11, 0x0

    .line 57
    const-string v8, "androidripper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Planning for new Activity "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/ActivityState;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v5, Lit/unina/androidripper/model/Plan;

    invoke-direct {v5}, Lit/unina/androidripper/model/Plan;-><init>()V

    .line 59
    .local v5, p:Lit/unina/androidripper/model/Plan;
    invoke-virtual {p0, v5, p1, p2, p3}, Lit/unina/androidripper/planning/SimplePlanner;->addPlanForActivityWidgets(Lit/unina/androidripper/model/Plan;Lcom/nofatclips/androidtesting/model/ActivityState;ZZ)V

    .line 65
    sget-boolean v8, Lit/unina/androidripper/planning/Resources;->BACK_BUTTON_EVENT:Z

    if-eqz v8, :cond_0

    if-eqz p3, :cond_0

    .line 66
    invoke-virtual {p0}, Lit/unina/androidripper/planning/SimplePlanner;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v8

    const-string v9, "back"

    invoke-interface {v8, v11, v9}, Lit/unina/androidripper/model/Abstractor;->createEvent(Lcom/nofatclips/androidtesting/model/WidgetState;Ljava/lang/String;)Lcom/nofatclips/androidtesting/model/UserEvent;

    move-result-object v1

    .line 67
    .local v1, evt:Lcom/nofatclips/androidtesting/model/UserEvent;
    invoke-virtual {p0}, Lit/unina/androidripper/planning/SimplePlanner;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v8

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v8, p1, v9, v1}, Lit/unina/androidripper/model/Abstractor;->createStep(Lcom/nofatclips/androidtesting/model/ActivityState;Ljava/util/Collection;Lcom/nofatclips/androidtesting/model/UserEvent;)Lcom/nofatclips/androidtesting/model/Transition;

    move-result-object v7

    .line 68
    .local v7, t:Lcom/nofatclips/androidtesting/model/Transition;
    const-string v8, "androidripper"

    const-string v9, "Created trace to press the back button"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {v5, v7}, Lit/unina/androidripper/model/Plan;->addTask(Lcom/nofatclips/androidtesting/model/Transition;)Z

    .line 72
    .end local v1           #evt:Lcom/nofatclips/androidtesting/model/UserEvent;
    .end local v7           #t:Lcom/nofatclips/androidtesting/model/Transition;
    :cond_0
    sget-boolean v8, Lit/unina/androidripper/planning/Resources;->MENU_EVENTS:Z

    if-eqz v8, :cond_1

    .line 73
    invoke-virtual {p0}, Lit/unina/androidripper/planning/SimplePlanner;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v8

    const-string v9, "openMenu"

    invoke-interface {v8, v11, v9}, Lit/unina/androidripper/model/Abstractor;->createEvent(Lcom/nofatclips/androidtesting/model/WidgetState;Ljava/lang/String;)Lcom/nofatclips/androidtesting/model/UserEvent;

    move-result-object v1

    .line 74
    .restart local v1       #evt:Lcom/nofatclips/androidtesting/model/UserEvent;
    invoke-virtual {p0}, Lit/unina/androidripper/planning/SimplePlanner;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v8

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v8, p1, v9, v1}, Lit/unina/androidripper/model/Abstractor;->createStep(Lcom/nofatclips/androidtesting/model/ActivityState;Ljava/util/Collection;Lcom/nofatclips/androidtesting/model/UserEvent;)Lcom/nofatclips/androidtesting/model/Transition;

    move-result-object v7

    .line 75
    .restart local v7       #t:Lcom/nofatclips/androidtesting/model/Transition;
    const-string v8, "androidripper"

    const-string v9, "Created trace to press the menu button"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {v5, v7}, Lit/unina/androidripper/model/Plan;->addTask(Lcom/nofatclips/androidtesting/model/Transition;)Z

    .line 79
    .end local v1           #evt:Lcom/nofatclips/androidtesting/model/UserEvent;
    .end local v7           #t:Lcom/nofatclips/androidtesting/model/Transition;
    :cond_1
    sget-boolean v8, Lit/unina/androidripper/planning/Resources;->ACTIONBARHOME_EVENTS:Z

    if-eqz v8, :cond_2

    .line 80
    invoke-virtual {p0}, Lit/unina/androidripper/planning/SimplePlanner;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v8

    const-string v9, "HomeClick"

    invoke-interface {v8, v11, v9}, Lit/unina/androidripper/model/Abstractor;->createEvent(Lcom/nofatclips/androidtesting/model/WidgetState;Ljava/lang/String;)Lcom/nofatclips/androidtesting/model/UserEvent;

    move-result-object v1

    .line 81
    .restart local v1       #evt:Lcom/nofatclips/androidtesting/model/UserEvent;
    invoke-virtual {p0}, Lit/unina/androidripper/planning/SimplePlanner;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v8

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v8, p1, v9, v1}, Lit/unina/androidripper/model/Abstractor;->createStep(Lcom/nofatclips/androidtesting/model/ActivityState;Ljava/util/Collection;Lcom/nofatclips/androidtesting/model/UserEvent;)Lcom/nofatclips/androidtesting/model/Transition;

    move-result-object v7

    .line 82
    .restart local v7       #t:Lcom/nofatclips/androidtesting/model/Transition;
    const-string v8, "androidripper"

    const-string v9, "Created trace to click on ActionBar Home button"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {v5, v7}, Lit/unina/androidripper/model/Plan;->addTask(Lcom/nofatclips/androidtesting/model/Transition;)Z

    .line 87
    .end local v1           #evt:Lcom/nofatclips/androidtesting/model/UserEvent;
    .end local v7           #t:Lcom/nofatclips/androidtesting/model/Transition;
    :cond_2
    sget-boolean v8, Lit/unina/androidripper/planning/Resources;->SCROLL_DOWN_EVENT:Z

    if-eqz v8, :cond_3

    .line 88
    invoke-virtual {p0}, Lit/unina/androidripper/planning/SimplePlanner;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v8

    const-string v9, "scrollDown"

    invoke-interface {v8, v11, v9}, Lit/unina/androidripper/model/Abstractor;->createEvent(Lcom/nofatclips/androidtesting/model/WidgetState;Ljava/lang/String;)Lcom/nofatclips/androidtesting/model/UserEvent;

    move-result-object v1

    .line 89
    .restart local v1       #evt:Lcom/nofatclips/androidtesting/model/UserEvent;
    invoke-virtual {p0}, Lit/unina/androidripper/planning/SimplePlanner;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v8

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v8, p1, v9, v1}, Lit/unina/androidripper/model/Abstractor;->createStep(Lcom/nofatclips/androidtesting/model/ActivityState;Ljava/util/Collection;Lcom/nofatclips/androidtesting/model/UserEvent;)Lcom/nofatclips/androidtesting/model/Transition;

    move-result-object v7

    .line 90
    .restart local v7       #t:Lcom/nofatclips/androidtesting/model/Transition;
    const-string v8, "androidripper"

    const-string v9, "Created trace to perform scrolling down"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {v5, v7}, Lit/unina/androidripper/model/Plan;->addTask(Lcom/nofatclips/androidtesting/model/Transition;)Z

    .line 94
    .end local v1           #evt:Lcom/nofatclips/androidtesting/model/UserEvent;
    .end local v7           #t:Lcom/nofatclips/androidtesting/model/Transition;
    :cond_3
    sget-boolean v8, Lit/unina/androidripper/planning/Resources;->ORIENTATION_EVENTS:Z

    if-eqz v8, :cond_4

    .line 95
    invoke-virtual {p0}, Lit/unina/androidripper/planning/SimplePlanner;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v8

    const-string v9, "changeOrientation"

    invoke-interface {v8, v11, v9}, Lit/unina/androidripper/model/Abstractor;->createEvent(Lcom/nofatclips/androidtesting/model/WidgetState;Ljava/lang/String;)Lcom/nofatclips/androidtesting/model/UserEvent;

    move-result-object v1

    .line 96
    .restart local v1       #evt:Lcom/nofatclips/androidtesting/model/UserEvent;
    invoke-virtual {p0}, Lit/unina/androidripper/planning/SimplePlanner;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v8

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v8, p1, v9, v1}, Lit/unina/androidripper/model/Abstractor;->createStep(Lcom/nofatclips/androidtesting/model/ActivityState;Ljava/util/Collection;Lcom/nofatclips/androidtesting/model/UserEvent;)Lcom/nofatclips/androidtesting/model/Transition;

    move-result-object v7

    .line 97
    .restart local v7       #t:Lcom/nofatclips/androidtesting/model/Transition;
    const-string v8, "androidripper"

    const-string v9, "Created trace to change orientation"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {v5, v7}, Lit/unina/androidripper/model/Plan;->addTask(Lcom/nofatclips/androidtesting/model/Transition;)Z

    .line 101
    .end local v1           #evt:Lcom/nofatclips/androidtesting/model/UserEvent;
    .end local v7           #t:Lcom/nofatclips/androidtesting/model/Transition;
    :cond_4
    sget-object v8, Lit/unina/androidripper/planning/Resources;->KEY_EVENTS:[I

    array-length v8, v8

    if-lez v8, :cond_5

    .line 102
    sget-object v0, Lit/unina/androidripper/planning/Resources;->KEY_EVENTS:[I

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_5

    aget v3, v0, v2

    .line 103
    .local v3, keyCode:I
    invoke-virtual {p0}, Lit/unina/androidripper/planning/SimplePlanner;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v8

    const-string v9, "pressKey"

    invoke-interface {v8, v11, v9}, Lit/unina/androidripper/model/Abstractor;->createEvent(Lcom/nofatclips/androidtesting/model/WidgetState;Ljava/lang/String;)Lcom/nofatclips/androidtesting/model/UserEvent;

    move-result-object v1

    .line 104
    .restart local v1       #evt:Lcom/nofatclips/androidtesting/model/UserEvent;
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Lcom/nofatclips/androidtesting/model/UserEvent;->setValue(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lit/unina/androidripper/planning/SimplePlanner;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v8

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v8, p1, v9, v1}, Lit/unina/androidripper/model/Abstractor;->createStep(Lcom/nofatclips/androidtesting/model/ActivityState;Ljava/util/Collection;Lcom/nofatclips/androidtesting/model/UserEvent;)Lcom/nofatclips/androidtesting/model/Transition;

    move-result-object v7

    .line 106
    .restart local v7       #t:Lcom/nofatclips/androidtesting/model/Transition;
    const-string v8, "androidripper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Created trace to perform key press (key code: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {v5, v7}, Lit/unina/androidripper/model/Plan;->addTask(Lcom/nofatclips/androidtesting/model/Transition;)Z

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    .end local v0           #arr$:[I
    .end local v1           #evt:Lcom/nofatclips/androidtesting/model/UserEvent;
    .end local v2           #i$:I
    .end local v3           #keyCode:I
    .end local v4           #len$:I
    .end local v7           #t:Lcom/nofatclips/androidtesting/model/Transition;
    :cond_5
    const-string v8, "act0"

    invoke-interface {p1, v8}, Lcom/nofatclips/androidtesting/model/ActivityState;->getSupportedEventsByWidgetUniqueId(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nofatclips/androidtesting/model/SupportedEvent;

    .line 117
    .local v6, se:Lcom/nofatclips/androidtesting/model/SupportedEvent;
    invoke-interface {v6}, Lcom/nofatclips/androidtesting/model/SupportedEvent;->getEventType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "accelerometerSensorEvent"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 119
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "accelerometerSensorEvent"

    invoke-virtual {p0, v8, v9, p1, v5}, Lit/unina/androidripper/planning/SimplePlanner;->addStepsForSensor(Ljava/lang/Integer;Ljava/lang/String;Lcom/nofatclips/androidtesting/model/ActivityState;Lit/unina/androidripper/model/Plan;)V

    goto :goto_1

    .line 125
    :cond_7
    invoke-interface {v6}, Lcom/nofatclips/androidtesting/model/SupportedEvent;->getEventType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "orientationSensorEvent"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 127
    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "orientationSensorEvent"

    invoke-virtual {p0, v8, v9, p1, v5}, Lit/unina/androidripper/planning/SimplePlanner;->addStepsForSensor(Ljava/lang/Integer;Ljava/lang/String;Lcom/nofatclips/androidtesting/model/ActivityState;Lit/unina/androidripper/model/Plan;)V

    goto :goto_1

    .line 133
    :cond_8
    invoke-interface {v6}, Lcom/nofatclips/androidtesting/model/SupportedEvent;->getEventType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "magneticFieldSensorEvent"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 135
    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "magneticFieldSensorEvent"

    invoke-virtual {p0, v8, v9, p1, v5}, Lit/unina/androidripper/planning/SimplePlanner;->addStepsForSensor(Ljava/lang/Integer;Ljava/lang/String;Lcom/nofatclips/androidtesting/model/ActivityState;Lit/unina/androidripper/model/Plan;)V

    goto :goto_1

    .line 142
    :cond_9
    invoke-interface {v6}, Lcom/nofatclips/androidtesting/model/SupportedEvent;->getEventType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "temperatureSensorEvent"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 144
    const/4 v8, 0x7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "temperatureSensorEvent"

    invoke-virtual {p0, v8, v9, p1, v5}, Lit/unina/androidripper/planning/SimplePlanner;->addStepsForSensor(Ljava/lang/Integer;Ljava/lang/String;Lcom/nofatclips/androidtesting/model/ActivityState;Lit/unina/androidripper/model/Plan;)V

    goto :goto_1

    .line 150
    :cond_a
    invoke-interface {v6}, Lcom/nofatclips/androidtesting/model/SupportedEvent;->getEventType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "gpsLocationChangeEvent"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 152
    invoke-virtual {p0, p1, v5}, Lit/unina/androidripper/planning/SimplePlanner;->addStepsForGPS(Lcom/nofatclips/androidtesting/model/ActivityState;Lit/unina/androidripper/model/Plan;)V

    goto :goto_1

    .line 155
    :cond_b
    invoke-interface {v6}, Lcom/nofatclips/androidtesting/model/SupportedEvent;->getEventType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "gpsProviderDisableEvent"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 164
    invoke-interface {v6}, Lcom/nofatclips/androidtesting/model/SupportedEvent;->getEventType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "incomingCallEvent"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 166
    const/4 v1, 0x0

    .line 167
    .restart local v1       #evt:Lcom/nofatclips/androidtesting/model/UserEvent;
    invoke-virtual {p0}, Lit/unina/androidripper/planning/SimplePlanner;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v8

    const-string v9, "incomingCallEvent"

    invoke-interface {v8, v11, v9}, Lit/unina/androidripper/model/Abstractor;->createEvent(Lcom/nofatclips/androidtesting/model/WidgetState;Ljava/lang/String;)Lcom/nofatclips/androidtesting/model/UserEvent;

    move-result-object v1

    .line 168
    invoke-virtual {p0}, Lit/unina/androidripper/planning/SimplePlanner;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8, p1, v9, v1}, Lit/unina/androidripper/model/Abstractor;->createStep(Lcom/nofatclips/androidtesting/model/ActivityState;Ljava/util/Collection;Lcom/nofatclips/androidtesting/model/UserEvent;)Lcom/nofatclips/androidtesting/model/Transition;

    move-result-object v7

    .line 169
    .restart local v7       #t:Lcom/nofatclips/androidtesting/model/Transition;
    invoke-virtual {v5, v7}, Lit/unina/androidripper/model/Plan;->addTask(Lcom/nofatclips/androidtesting/model/Transition;)Z

    goto/16 :goto_1

    .line 172
    .end local v1           #evt:Lcom/nofatclips/androidtesting/model/UserEvent;
    .end local v7           #t:Lcom/nofatclips/androidtesting/model/Transition;
    :cond_c
    invoke-interface {v6}, Lcom/nofatclips/androidtesting/model/SupportedEvent;->getEventType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "incomingSMSEvent"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 174
    const/4 v1, 0x0

    .line 175
    .restart local v1       #evt:Lcom/nofatclips/androidtesting/model/UserEvent;
    invoke-virtual {p0}, Lit/unina/androidripper/planning/SimplePlanner;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v8

    const-string v9, "incomingSMSEvent"

    invoke-interface {v8, v11, v9}, Lit/unina/androidripper/model/Abstractor;->createEvent(Lcom/nofatclips/androidtesting/model/WidgetState;Ljava/lang/String;)Lcom/nofatclips/androidtesting/model/UserEvent;

    move-result-object v1

    .line 176
    invoke-virtual {p0}, Lit/unina/androidripper/planning/SimplePlanner;->getAbstractor()Lit/unina/androidripper/model/Abstractor;

    move-result-object v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8, p1, v9, v1}, Lit/unina/androidripper/model/Abstractor;->createStep(Lcom/nofatclips/androidtesting/model/ActivityState;Ljava/util/Collection;Lcom/nofatclips/androidtesting/model/UserEvent;)Lcom/nofatclips/androidtesting/model/Transition;

    move-result-object v7

    .line 177
    .restart local v7       #t:Lcom/nofatclips/androidtesting/model/Transition;
    invoke-virtual {v5, v7}, Lit/unina/androidripper/model/Plan;->addTask(Lcom/nofatclips/androidtesting/model/Transition;)Z

    goto/16 :goto_1

    .line 182
    .end local v1           #evt:Lcom/nofatclips/androidtesting/model/UserEvent;
    .end local v6           #se:Lcom/nofatclips/androidtesting/model/SupportedEvent;
    .end local v7           #t:Lcom/nofatclips/androidtesting/model/Transition;
    :cond_d
    return-object v5
.end method

.method public getPlanForBaseActivity(Lcom/nofatclips/androidtesting/model/ActivityState;)Lit/unina/androidripper/model/Plan;
    .locals 2
    .parameter "a"

    .prologue
    .line 30
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lit/unina/androidripper/planning/SimplePlanner;->getPlanForActivity(Lcom/nofatclips/androidtesting/model/ActivityState;ZZ)Lit/unina/androidripper/model/Plan;

    move-result-object v0

    return-object v0
.end method

.method public getUser()Lit/unina/androidripper/model/EventHandler;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lit/unina/androidripper/planning/SimplePlanner;->user:Lit/unina/androidripper/model/EventHandler;

    return-object v0
.end method

.method public setAbstractor(Lit/unina/androidripper/model/Abstractor;)V
    .locals 0
    .parameter "abstractor"

    .prologue
    .line 338
    iput-object p1, p0, Lit/unina/androidripper/planning/SimplePlanner;->abstractor:Lit/unina/androidripper/model/Abstractor;

    .line 339
    return-void
.end method

.method public setEventFilter(Lit/unina/androidripper/model/Filter;)V
    .locals 0
    .parameter "eventFilter"

    .prologue
    .line 306
    iput-object p1, p0, Lit/unina/androidripper/planning/SimplePlanner;->eventFilter:Lit/unina/androidripper/model/Filter;

    .line 307
    return-void
.end method

.method public setFormFiller(Lit/unina/androidripper/model/InputHandler;)V
    .locals 0
    .parameter "formFiller"

    .prologue
    .line 330
    iput-object p1, p0, Lit/unina/androidripper/planning/SimplePlanner;->formFiller:Lit/unina/androidripper/model/InputHandler;

    .line 331
    return-void
.end method

.method public setInputFilter(Lit/unina/androidripper/model/Filter;)V
    .locals 0
    .parameter "inputFilter"

    .prologue
    .line 314
    iput-object p1, p0, Lit/unina/androidripper/planning/SimplePlanner;->inputFilter:Lit/unina/androidripper/model/Filter;

    .line 315
    return-void
.end method

.method public setUser(Lit/unina/androidripper/model/EventHandler;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 322
    iput-object p1, p0, Lit/unina/androidripper/planning/SimplePlanner;->user:Lit/unina/androidripper/model/EventHandler;

    .line 323
    return-void
.end method
