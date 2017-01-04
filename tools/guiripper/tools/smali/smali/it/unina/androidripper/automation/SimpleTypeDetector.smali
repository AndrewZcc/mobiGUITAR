.class public Lit/unina/androidripper/automation/SimpleTypeDetector;
.super Ljava/lang/Object;
.source "SimpleTypeDetector.java"

# interfaces
.implements Lit/unina/androidripper/model/TypeDetector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSimpleType(Landroid/view/View;)Ljava/lang/String;
    .locals 5
    .parameter "v"

    .prologue
    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 20
    .local v2, type:Ljava/lang/String;
    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 21
    const-string v3, "null"

    .line 86
    :goto_0
    return-object v3

    .line 22
    :cond_0
    const-string v3, "SlidingDrawer"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 23
    const-string v3, "slidingDrawer"

    goto :goto_0

    .line 24
    :cond_1
    const-string v3, "RadioButton"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 25
    const-string v3, "radio"

    goto :goto_0

    .line 26
    :cond_2
    const-string v3, "RadioGroup"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 27
    const-string v3, "radioGroup"

    goto :goto_0

    .line 28
    :cond_3
    const-string v3, "CheckBox"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "CheckedTextView"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 29
    :cond_4
    const-string v3, "check"

    goto :goto_0

    .line 30
    :cond_5
    const-string v3, "ToggleButton"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 31
    const-string v3, "toggle"

    goto :goto_0

    .line 32
    :cond_6
    const-string v3, "IconMenuView"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "ActionMenuView"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 33
    :cond_7
    const-string v3, "menu"

    goto :goto_0

    .line 34
    :cond_8
    const-string v3, "DatePicker"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 35
    const-string v3, "datePicker"

    goto :goto_0

    .line 36
    :cond_9
    const-string v3, "TimePicker"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 37
    const-string v3, "timePicker"

    goto :goto_0

    .line 38
    :cond_a
    const-string v3, "IconMenuItemView"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "ActionMenuItemView"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 39
    :cond_b
    const-string v3, "menuItem"

    goto :goto_0

    .line 40
    :cond_c
    const-string v3, "DialogTitle"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 41
    const-string v3, "dialog"

    goto/16 :goto_0

    .line 42
    :cond_d
    const-string v3, "Button"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 43
    const-string v3, "button"

    goto/16 :goto_0

    .line 44
    :cond_e
    const-string v3, "EditText"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 45
    const-string v3, "editText"

    goto/16 :goto_0

    .line 46
    :cond_f
    const-string v3, "SearchAutoComplete"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 47
    const-string v3, "searchBar"

    goto/16 :goto_0

    .line 48
    :cond_10
    const-string v3, "Spinner"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    move-object v1, p1

    .line 49
    check-cast v1, Landroid/widget/Spinner;

    .line 50
    .local v1, s:Landroid/widget/Spinner;
    invoke-virtual {v1}, Landroid/widget/Spinner;->getCount()I

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "emptySpinner"

    goto/16 :goto_0

    .line 51
    :cond_11
    const-string v3, "spinner"

    goto/16 :goto_0

    .line 53
    .end local v1           #s:Landroid/widget/Spinner;
    :cond_12
    const-string v3, "SeekBar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 54
    const-string v3, "seekBar"

    goto/16 :goto_0

    .line 55
    :cond_13
    instance-of v3, p1, Landroid/widget/RatingBar;

    if-eqz v3, :cond_14

    move-object v3, p1

    check-cast v3, Landroid/widget/RatingBar;

    invoke-virtual {v3}, Landroid/widget/RatingBar;->isIndicator()Z

    move-result v3

    if-nez v3, :cond_14

    .line 56
    const-string v3, "ratingBar"

    goto/16 :goto_0

    .line 57
    :cond_14
    const-string v3, "TabHost"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 58
    const-string v3, "tabHost"

    goto/16 :goto_0

    .line 59
    :cond_15
    const-string v3, "ListView"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string v3, "ExpandedMenuView"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    :cond_16
    move-object v0, p1

    .line 60
    check-cast v0, Landroid/widget/ListView;

    .line 61
    .local v0, l:Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v3

    if-nez v3, :cond_17

    const-string v3, "emptyList"

    goto/16 :goto_0

    .line 63
    :cond_17
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PreferenceGroupAdapter"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 64
    const-string v3, "preferenceList"

    goto/16 :goto_0

    .line 67
    :cond_18
    invoke-virtual {v0}, Landroid/widget/ListView;->getChoiceMode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 73
    .end local v0           #l:Landroid/widget/ListView;
    :cond_19
    const-string v3, "AutoCompleteTextView"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 74
    const-string v3, "autoCText"

    goto/16 :goto_0

    .line 68
    .restart local v0       #l:Landroid/widget/ListView;
    :pswitch_0
    const-string v3, "listView"

    goto/16 :goto_0

    .line 69
    :pswitch_1
    const-string v3, "singleChoiceList"

    goto/16 :goto_0

    .line 70
    :pswitch_2
    const-string v3, "multiChoiceList"

    goto/16 :goto_0

    .line 75
    .end local v0           #l:Landroid/widget/ListView;
    :cond_1a
    const-string v3, "TextView"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 76
    const-string v3, "text"

    goto/16 :goto_0

    .line 77
    :cond_1b
    const-string v3, "ImageView"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 78
    const-string v3, "image"

    goto/16 :goto_0

    .line 79
    :cond_1c
    const-string v3, "LinearLayout"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 80
    const-string v3, "linearLayout"

    goto/16 :goto_0

    .line 81
    :cond_1d
    instance-of v3, p1, Landroid/webkit/WebView;

    if-nez v3, :cond_1e

    const-string v3, "WebView"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 82
    :cond_1e
    const-string v3, "webPage"

    goto/16 :goto_0

    .line 83
    :cond_1f
    const-string v3, "TwoLineListItem"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 84
    const-string v3, "listItem"

    goto/16 :goto_0

    .line 86
    :cond_20
    const-string v3, ""

    goto/16 :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
