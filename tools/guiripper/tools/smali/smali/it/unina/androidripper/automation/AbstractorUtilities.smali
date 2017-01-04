.class public Lit/unina/androidripper/automation/AbstractorUtilities;
.super Ljava/lang/Object;
.source "AbstractorUtilities.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static describeCurrentEvent(Lcom/nofatclips/androidtesting/model/UserEvent;Landroid/view/View;)Z
    .locals 8
    .parameter "e"
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 130
    if-nez p0, :cond_0

    move v4, v5

    .line 150
    .end local p1
    :goto_0
    return v4

    .line 131
    .restart local p1
    :cond_0
    invoke-interface {p0}, Lcom/nofatclips/androidtesting/model/UserEvent;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v7, "pressKey"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 132
    invoke-static {p0}, Lit/unina/androidripper/automation/AbstractorUtilities;->describeKeyEvent(Lcom/nofatclips/androidtesting/model/UserEvent;)Z

    move-result v4

    goto :goto_0

    .line 136
    :cond_1
    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 137
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, s:Ljava/lang/String;
    invoke-interface {p0, v3}, Lcom/nofatclips/androidtesting/model/UserEvent;->setDescription(Ljava/lang/String;)V

    .line 139
    const-string v4, "androidripper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Event description: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    .line 140
    goto :goto_0

    .line 141
    .end local v3           #s:Ljava/lang/String;
    .restart local p1
    :cond_2
    instance-of v4, p1, Landroid/widget/TabHost;

    if-eqz v4, :cond_4

    .line 142
    check-cast p1, Landroid/widget/TabHost;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Lcom/nofatclips/androidtesting/model/UserEvent;->setDescription(Ljava/lang/String;)V

    :cond_3
    move v4, v5

    .line 150
    goto :goto_0

    .line 143
    .restart local p1
    :cond_4
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    move-object v4, p1

    .line 144
    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 145
    .local v1, childNum:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_3

    move-object v4, p1

    .line 146
    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 147
    .local v0, child:Landroid/view/View;
    invoke-static {p0, v0}, Lit/unina/androidripper/automation/AbstractorUtilities;->describeCurrentEvent(Lcom/nofatclips/androidtesting/model/UserEvent;Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v6

    goto :goto_0

    .line 145
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static describeKeyEvent(Lcom/nofatclips/androidtesting/model/UserEvent;)Z
    .locals 9
    .parameter "e"

    .prologue
    .line 111
    invoke-interface {p0}, Lcom/nofatclips/androidtesting/model/UserEvent;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 113
    .local v5, val:I
    const-class v6, Landroid/view/KeyEvent;

    invoke-virtual {v6}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/reflect/Field;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 114
    .local v1, f:Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 115
    .local v4, name:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 117
    :try_start_0
    const-string v6, "KEYCODE_"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    if-ne v6, v5, :cond_0

    .line 118
    const-string v6, "androidripper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Event Description: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string v6, "KEYCODE_"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v6}, Lcom/nofatclips/androidtesting/model/UserEvent;->setDescription(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    const/4 v6, 0x1

    .line 126
    .end local v1           #f:Ljava/lang/reflect/Field;
    .end local v4           #name:Ljava/lang/String;
    :goto_1
    return v6

    .line 123
    .restart local v1       #f:Ljava/lang/reflect/Field;
    .restart local v4       #name:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 113
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 126
    .end local v1           #f:Ljava/lang/reflect/Field;
    .end local v4           #name:Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 122
    .restart local v1       #f:Ljava/lang/reflect/Field;
    .restart local v4       #name:Ljava/lang/String;
    :catch_1
    move-exception v6

    goto :goto_2
.end method

.method public static detectName(Landroid/view/View;)Ljava/lang/String;
    .locals 9
    .parameter "v"

    .prologue
    .line 25
    const-string v5, ""

    .line 26
    .local v5, name:Ljava/lang/String;
    instance-of v8, p0, Landroid/widget/TextView;

    if-eqz v8, :cond_2

    move-object v6, p0

    .line 27
    check-cast v6, Landroid/widget/TextView;

    .line 28
    .local v6, t:Landroid/widget/TextView;
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 29
    instance-of v8, p0, Landroid/widget/EditText;

    if-eqz v8, :cond_0

    .line 30
    check-cast p0, Landroid/widget/EditText;

    .end local p0
    invoke-virtual {p0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    .line 31
    .local v2, hint:Ljava/lang/CharSequence;
    if-nez v2, :cond_1

    const-string v5, ""

    .line 46
    .end local v2           #hint:Ljava/lang/CharSequence;
    .end local v6           #t:Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-object v5

    .line 31
    .restart local v2       #hint:Ljava/lang/CharSequence;
    .restart local v6       #t:Landroid/widget/TextView;
    :cond_1
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 33
    .end local v2           #hint:Ljava/lang/CharSequence;
    .end local v6           #t:Landroid/widget/TextView;
    .restart local p0
    :cond_2
    instance-of v8, p0, Landroid/widget/RadioGroup;

    if-eqz v8, :cond_0

    move-object v1, p0

    .line 34
    check-cast v1, Landroid/widget/RadioGroup;

    .line 35
    .local v1, g:Landroid/widget/RadioGroup;
    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v4

    .line 36
    .local v4, max:I
    const-string v7, ""

    .line 37
    .local v7, text:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_0

    .line 38
    invoke-virtual {v1, v3}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 39
    .local v0, c:Landroid/view/View;
    invoke-static {v0}, Lit/unina/androidripper/automation/AbstractorUtilities;->detectName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    .line 40
    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 41
    move-object v5, v7

    .line 42
    goto :goto_0

    .line 37
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static getType(Landroid/view/View;)Ljava/lang/String;
    .locals 1
    .parameter "v"

    .prologue
    .line 104
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reflectTextualIDbyNumericalID(I)Ljava/lang/String;
    .locals 11
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    .line 163
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lit/unina/androidripper/Resources;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".R"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 164
    .local v1, c:Ljava/lang/Class;
    const/4 v6, 0x0

    .line 165
    .local v6, idClass:Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/Class;
    array-length v7, v0

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v2, v0, v5

    .line 167
    .local v2, c1:Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".id"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 169
    move-object v6, v2

    .line 174
    .end local v2           #c1:Ljava/lang/Class;
    :cond_0
    if-eqz v6, :cond_1

    .line 176
    invoke-virtual {v6}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/reflect/Field;
    array-length v7, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v7, :cond_1

    aget-object v4, v0, v5

    .line 178
    .local v4, f:Ljava/lang/reflect/Field;
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v9

    if-ne v9, p0, :cond_3

    .line 179
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 188
    .end local v0           #arr$:[Ljava/lang/reflect/Field;
    .end local v1           #c:Ljava/lang/Class;
    .end local v4           #f:Ljava/lang/reflect/Field;
    .end local v5           #i$:I
    .end local v6           #idClass:Ljava/lang/Class;
    .end local v7           #len$:I
    :cond_1
    :goto_2
    return-object v8

    .line 165
    .local v0, arr$:[Ljava/lang/Class;
    .restart local v1       #c:Ljava/lang/Class;
    .restart local v2       #c1:Ljava/lang/Class;
    .restart local v5       #i$:I
    .restart local v6       #idClass:Ljava/lang/Class;
    .restart local v7       #len$:I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 176
    .end local v2           #c1:Ljava/lang/Class;
    .local v0, arr$:[Ljava/lang/reflect/Field;
    .restart local v4       #f:Ljava/lang/reflect/Field;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 182
    .end local v0           #arr$:[Ljava/lang/reflect/Field;
    .end local v1           #c:Ljava/lang/Class;
    .end local v4           #f:Ljava/lang/reflect/Field;
    .end local v5           #i$:I
    .end local v6           #idClass:Ljava/lang/Class;
    .end local v7           #len$:I
    :catch_0
    move-exception v3

    .line 185
    .local v3, e:Ljava/lang/Exception;
    const-string v9, "androidripper"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static setCount(Landroid/view/View;Lcom/nofatclips/androidtesting/model/WidgetState;)V
    .locals 1
    .parameter "v"
    .parameter "w"

    .prologue
    .line 52
    instance-of v0, p0, Landroid/widget/AdapterView;

    if-eqz v0, :cond_1

    .line 53
    check-cast p0, Landroid/widget/AdapterView;

    .end local p0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/nofatclips/androidtesting/model/WidgetState;->setCount(I)V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 58
    .restart local p0
    :cond_1
    instance-of v0, p0, Landroid/widget/AbsSpinner;

    if-eqz v0, :cond_2

    .line 59
    check-cast p0, Landroid/widget/AbsSpinner;

    .end local p0
    invoke-virtual {p0}, Landroid/widget/AbsSpinner;->getCount()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/nofatclips/androidtesting/model/WidgetState;->setCount(I)V

    goto :goto_0

    .line 64
    .restart local p0
    :cond_2
    instance-of v0, p0, Landroid/widget/TabHost;

    if-eqz v0, :cond_3

    .line 65
    check-cast p0, Landroid/widget/TabHost;

    .end local p0
    invoke-virtual {p0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/nofatclips/androidtesting/model/WidgetState;->setCount(I)V

    goto :goto_0

    .line 70
    .restart local p0
    :cond_3
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 71
    check-cast p0, Landroid/view/ViewGroup;

    .end local p0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/nofatclips/androidtesting/model/WidgetState;->setCount(I)V

    goto :goto_0

    .line 76
    .restart local p0
    :cond_4
    instance-of v0, p0, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 77
    check-cast p0, Landroid/widget/ProgressBar;

    .end local p0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/nofatclips/androidtesting/model/WidgetState;->setCount(I)V

    goto :goto_0
.end method

.method public static setValue(Landroid/view/View;Lcom/nofatclips/androidtesting/model/WidgetState;)V
    .locals 1
    .parameter "v"
    .parameter "w"

    .prologue
    .line 86
    instance-of v0, p0, Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 87
    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/nofatclips/androidtesting/model/WidgetState;->setValue(Ljava/lang/String;)V

    .line 91
    :cond_0
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 92
    check-cast p0, Landroid/widget/TextView;

    .end local p0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/nofatclips/androidtesting/model/WidgetState;->setValue(Ljava/lang/String;)V

    .line 101
    :cond_1
    :goto_0
    return-void

    .line 97
    .restart local p0
    :cond_2
    instance-of v0, p0, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 98
    check-cast p0, Landroid/widget/ProgressBar;

    .end local p0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/nofatclips/androidtesting/model/WidgetState;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method
