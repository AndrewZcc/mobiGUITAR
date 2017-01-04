.class public Lit/unina/androidripper/strategy/comparator/CustomWidgetsSimpleComparator;
.super Lit/unina/androidripper/strategy/comparator/NameComparator;
.source "CustomWidgetsSimpleComparator.java"


# static fields
.field public static final IGNORE_ACTIVITY_NAME:Z = true


# instance fields
.field protected widgetClasses:[Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Z[Ljava/lang/String;)V
    .locals 1
    .parameter "ignore"
    .parameter "widgets"

    .prologue
    .line 31
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lit/unina/androidripper/strategy/comparator/NameComparator;-><init>(Z)V

    .line 32
    iput-object p2, p0, Lit/unina/androidripper/strategy/comparator/CustomWidgetsSimpleComparator;->widgetClasses:[Ljava/lang/String;

    .line 33
    return-void

    .line 31
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 1
    .parameter "widgets"

    .prologue
    .line 27
    sget-boolean v0, Lit/unina/androidripper/strategy/comparator/Resources;->COMPARE_ACTIVITY_NAME:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0, p1}, Lit/unina/androidripper/strategy/comparator/CustomWidgetsSimpleComparator;-><init>(Z[Ljava/lang/String;)V

    .line 28
    return-void

    .line 27
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public compare(Lcom/nofatclips/androidtesting/model/ActivityState;Lcom/nofatclips/androidtesting/model/ActivityState;)Z
    .locals 9
    .parameter "currentActivity"
    .parameter "storedActivity"

    .prologue
    const/4 v5, 0x0

    .line 50
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 52
    .local v1, checkedAlready:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-boolean v6, p0, Lit/unina/androidripper/strategy/comparator/CustomWidgetsSimpleComparator;->byName:Z

    if-eqz v6, :cond_1

    invoke-super {p0, p1, p2}, Lit/unina/androidripper/strategy/comparator/NameComparator;->compare(Lcom/nofatclips/androidtesting/model/ActivityState;Lcom/nofatclips/androidtesting/model/ActivityState;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v5

    .line 55
    :cond_1
    const-string v6, "androidripper"

    const-string v7, "Looking for additional widgets"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/ActivityState;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nofatclips/androidtesting/model/WidgetState;

    .line 57
    .local v0, campo:Lcom/nofatclips/androidtesting/model/WidgetState;
    invoke-interface {v0}, Lcom/nofatclips/androidtesting/model/WidgetState;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 58
    .local v3, id:I
    invoke-interface {v0}, Lcom/nofatclips/androidtesting/model/WidgetState;->getSimpleType()Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, type:Ljava/lang/String;
    const-string v6, "androidripper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Comparator found widget "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (type = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-interface {v0}, Lcom/nofatclips/androidtesting/model/WidgetState;->getSimpleType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lit/unina/androidripper/strategy/comparator/CustomWidgetsSimpleComparator;->matchClass(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-lez v3, :cond_2

    .line 62
    const-string v6, "androidripper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Comparing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {p0, v0, p2}, Lit/unina/androidripper/strategy/comparator/CustomWidgetsSimpleComparator;->lookFor(Lcom/nofatclips/androidtesting/model/WidgetState;Lcom/nofatclips/androidtesting/model/ActivityState;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 64
    invoke-interface {v0}, Lcom/nofatclips/androidtesting/model/WidgetState;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 69
    .end local v0           #campo:Lcom/nofatclips/androidtesting/model/WidgetState;
    .end local v3           #id:I
    .end local v4           #type:Ljava/lang/String;
    :cond_3
    const-string v6, "androidripper"

    const-string v7, "Looking for missing widgets"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-interface {p2}, Lcom/nofatclips/androidtesting/model/ActivityState;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nofatclips/androidtesting/model/WidgetState;

    .line 71
    .restart local v0       #campo:Lcom/nofatclips/androidtesting/model/WidgetState;
    invoke-interface {v0}, Lcom/nofatclips/androidtesting/model/WidgetState;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 72
    .restart local v3       #id:I
    invoke-interface {v0}, Lcom/nofatclips/androidtesting/model/WidgetState;->getSimpleType()Ljava/lang/String;

    move-result-object v4

    .line 73
    .restart local v4       #type:Ljava/lang/String;
    const-string v6, "androidripper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Comparator found widget "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (type = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-interface {v0}, Lcom/nofatclips/androidtesting/model/WidgetState;->getSimpleType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lit/unina/androidripper/strategy/comparator/CustomWidgetsSimpleComparator;->matchClass(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-lez v3, :cond_4

    invoke-interface {v0}, Lcom/nofatclips/androidtesting/model/WidgetState;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 76
    const-string v6, "androidripper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Comparing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {p0, v0, p1}, Lit/unina/androidripper/strategy/comparator/CustomWidgetsSimpleComparator;->lookFor(Lcom/nofatclips/androidtesting/model/WidgetState;Lcom/nofatclips/androidtesting/model/ActivityState;)Z

    move-result v6

    if-nez v6, :cond_4

    goto/16 :goto_0

    .line 81
    .end local v0           #campo:Lcom/nofatclips/androidtesting/model/WidgetState;
    .end local v3           #id:I
    .end local v4           #type:Ljava/lang/String;
    :cond_5
    const/4 v5, 0x1

    goto/16 :goto_0
.end method

.method public describe()Ljava/lang/String;
    .locals 7

    .prologue
    .line 94
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .local v5, values:Ljava/lang/StringBuilder;
    const-string v1, ""

    .line 96
    .local v1, comma:Ljava/lang/String;
    iget-object v0, p0, Lit/unina/androidripper/strategy/comparator/CustomWidgetsSimpleComparator;->widgetClasses:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 97
    .local v4, value:Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string v1, ","

    .line 96
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    .end local v4           #value:Ljava/lang/String;
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method protected lookFor(Lcom/nofatclips/androidtesting/model/WidgetState;Lcom/nofatclips/androidtesting/model/ActivityState;)Z
    .locals 3
    .parameter "campo"
    .parameter "activity"

    .prologue
    .line 85
    invoke-interface {p2}, Lcom/nofatclips/androidtesting/model/ActivityState;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nofatclips/androidtesting/model/WidgetState;

    .line 86
    .local v0, altroCampo:Lcom/nofatclips/androidtesting/model/WidgetState;
    invoke-virtual {p0, v0, p1}, Lit/unina/androidripper/strategy/comparator/CustomWidgetsSimpleComparator;->matchWidget(Lcom/nofatclips/androidtesting/model/WidgetState;Lcom/nofatclips/androidtesting/model/WidgetState;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    const/4 v2, 0x1

    .line 90
    .end local v0           #altroCampo:Lcom/nofatclips/androidtesting/model/WidgetState;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public matchClass(Ljava/lang/String;)Z
    .locals 5
    .parameter "type"

    .prologue
    .line 36
    iget-object v0, p0, Lit/unina/androidripper/strategy/comparator/CustomWidgetsSimpleComparator;->widgetClasses:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 37
    .local v3, storedType:Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 39
    .end local v3           #storedType:Ljava/lang/String;
    :goto_1
    return v4

    .line 36
    .restart local v3       #storedType:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    .end local v3           #storedType:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected matchWidget(Lcom/nofatclips/androidtesting/model/WidgetState;Lcom/nofatclips/androidtesting/model/WidgetState;)Z
    .locals 6
    .parameter "campo"
    .parameter "altroCampo"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    sget-boolean v4, Lit/unina/androidripper/strategy/comparator/Resources;->COMPARE_LIST_COUNT:Z

    if-eqz v4, :cond_0

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/WidgetState;->getSimpleType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "listView"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p2}, Lcom/nofatclips/androidtesting/model/WidgetState;->getCount()I

    move-result v4

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/WidgetState;->getCount()I

    move-result v5

    if-ne v4, v5, :cond_2

    :cond_0
    move v0, v3

    .line 44
    .local v0, listCount:Z
    :goto_0
    sget-boolean v4, Lit/unina/androidripper/strategy/comparator/Resources;->COMPARE_MENU_COUNT:Z

    if-eqz v4, :cond_1

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/WidgetState;->getSimpleType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "menu"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p2}, Lcom/nofatclips/androidtesting/model/WidgetState;->getCount()I

    move-result v4

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/WidgetState;->getCount()I

    move-result v5

    if-ne v4, v5, :cond_3

    :cond_1
    move v1, v3

    .line 45
    .local v1, menuCount:Z
    :goto_1
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    invoke-interface {p2}, Lcom/nofatclips/androidtesting/model/WidgetState;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/WidgetState;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p2}, Lcom/nofatclips/androidtesting/model/WidgetState;->getSimpleType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/WidgetState;->getSimpleType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_2
    return v3

    .end local v0           #listCount:Z
    .end local v1           #menuCount:Z
    :cond_2
    move v0, v2

    .line 43
    goto :goto_0

    .restart local v0       #listCount:Z
    :cond_3
    move v1, v2

    .line 44
    goto :goto_1

    .restart local v1       #menuCount:Z
    :cond_4
    move v3, v2

    .line 45
    goto :goto_2
.end method
