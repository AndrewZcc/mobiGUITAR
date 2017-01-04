.class public Lit/unina/androidripper/helpers/ReflectionHelper;
.super Ljava/lang/Object;
.source "ReflectionHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "androidripper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkIfArrayListFieldIsSet(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "o"
    .parameter "baseClass"
    .parameter "fieldName"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 211
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 212
    .local v3, viewObj:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v3, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 213
    .local v2, field:Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 215
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 217
    .local v0, arrayListField:Ljava/util/ArrayList;
    if-eqz v0, :cond_1

    .line 219
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 221
    const-string v6, "androidripper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " > "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " FOUND | ACTIVE"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .end local v0           #arrayListField:Ljava/util/ArrayList;
    .end local v2           #field:Ljava/lang/reflect/Field;
    .end local v3           #viewObj:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    return v4

    .line 226
    .restart local v0       #arrayListField:Ljava/util/ArrayList;
    .restart local v2       #field:Ljava/lang/reflect/Field;
    .restart local v3       #viewObj:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    const-string v4, "androidripper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " FOUND | NOT ACTIVE"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    .end local v0           #arrayListField:Ljava/util/ArrayList;
    .end local v2           #field:Ljava/lang/reflect/Field;
    .end local v3           #viewObj:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_1
    const-string v4, "androidripper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " NOT FOUND"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 248
    goto :goto_0

    .line 237
    .restart local v0       #arrayListField:Ljava/util/ArrayList;
    .restart local v2       #field:Ljava/lang/reflect/Field;
    .restart local v3       #viewObj:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1
    :try_start_1
    const-string v4, "androidripper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " FOUND | NULL"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v4, v5

    .line 238
    goto/16 :goto_0

    .line 241
    .end local v0           #arrayListField:Ljava/util/ArrayList;
    .end local v2           #field:Ljava/lang/reflect/Field;
    .end local v3           #viewObj:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 243
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "androidripper"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static checkIfFieldIsSet(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "o"
    .parameter "baseClass"
    .parameter "fieldName"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 180
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 181
    .local v3, viewObj:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v3, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 182
    .local v1, field:Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 184
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 185
    .local v2, ret:Z
    :goto_0
    const-string v6, "androidripper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " > "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " FOUND | "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v2, :cond_1

    const-string v5, "ACTIVE"

    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .end local v1           #field:Ljava/lang/reflect/Field;
    .end local v2           #ret:Z
    .end local v3           #viewObj:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_2
    return v2

    .restart local v1       #field:Ljava/lang/reflect/Field;
    .restart local v3       #viewObj:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    move v2, v4

    .line 184
    goto :goto_0

    .line 185
    .restart local v2       #ret:Z
    :cond_1
    const-string v5, "NOT ACTIVE"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 193
    .end local v1           #field:Ljava/lang/reflect/Field;
    .end local v2           #ret:Z
    .end local v3           #viewObj:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 195
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "androidripper"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const-string v5, "androidripper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " NOT FOUND"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 200
    goto :goto_2
.end method

.method public static getPrivateField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "canonicalClassName"
    .parameter "fieldName"
    .parameter "o"

    .prologue
    .line 255
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 256
    .local v2, viewObj:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v2, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 257
    .local v1, field:Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 258
    invoke-virtual {v1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 265
    .end local v1           #field:Ljava/lang/reflect/Field;
    .end local v2           #viewObj:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    return-object v3

    .line 260
    :catch_0
    move-exception v0

    .line 262
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "androidripper"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static hasDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 7
    .parameter
    .parameter "methodName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 277
    .local p0, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/reflect/Method;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 278
    .local v4, m:Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 279
    const/4 v5, 0x1

    .line 286
    .end local v0           #arr$:[Ljava/lang/reflect/Method;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #m:Ljava/lang/reflect/Method;
    :goto_1
    return v5

    .line 277
    .restart local v0       #arr$:[Ljava/lang/reflect/Method;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v4       #m:Ljava/lang/reflect/Method;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 281
    .end local v0           #arr$:[Ljava/lang/reflect/Method;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #m:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 283
    .local v1, ex:Ljava/lang/Exception;
    const-string v5, "androidripper"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static implementsInterface(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 5
    .parameter
    .parameter "interfaceName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, myClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/Class;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 47
    .local v3, myInterface:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 48
    const/4 v4, 0x1

    .line 50
    .end local v3           #myInterface:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_1
    return v4

    .line 44
    .restart local v3       #myInterface:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    .end local v3           #myInterface:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static implementsInterface(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "className"
    .parameter "interfaceName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 32
    .local v0, myClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v0, p1}, Lit/unina/androidripper/helpers/ReflectionHelper;->implementsInterface(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isDescendant(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 291
    .local p0, descendant:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p1, anchestor:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public static reflectViewListeners(Landroid/view/View;)Ljava/util/HashMap;
    .locals 6
    .parameter "view"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 128
    .local v0, ret:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const-string v1, "focus"

    const-string v4, "android.view.View"

    const-string v5, "mOnFocusChangeListener"

    invoke-static {p0, v4, v5}, Lit/unina/androidripper/helpers/ReflectionHelper;->checkIfFieldIsSet(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v4, "click"

    const-string v1, "android.view.View"

    const-string v5, "mOnClickListener"

    invoke-static {p0, v1, v5}, Lit/unina/androidripper/helpers/ReflectionHelper;->checkIfFieldIsSet(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.view.View"

    const-string v5, "mOnTouchListener"

    invoke-static {p0, v1, v5}, Lit/unina/androidripper/helpers/ReflectionHelper;->checkIfFieldIsSet(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_0
    move v1, v3

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v1, "longClick"

    const-string v4, "android.view.View"

    const-string v5, "mOnLongClickListener"

    invoke-static {p0, v4, v5}, Lit/unina/androidripper/helpers/ReflectionHelper;->checkIfFieldIsSet(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "android.view.View"

    const-string v5, "mOnCreateContextMenuListener"

    invoke-static {p0, v4, v5}, Lit/unina/androidripper/helpers/ReflectionHelper;->checkIfFieldIsSet(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v1, "pressKey"

    const-string v2, "android.view.View"

    const-string v4, "mOnKeyListener"

    invoke-static {p0, v2, v4}, Lit/unina/androidripper/helpers/ReflectionHelper;->checkIfFieldIsSet(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    instance-of v1, p0, Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 144
    const-string v1, "editText"

    const-string v2, "android.widget.TextView"

    const-string v4, "mListeners"

    invoke-static {p0, v2, v4}, Lit/unina/androidripper/helpers/ReflectionHelper;->checkIfArrayListFieldIsSet(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_3
    instance-of v1, p0, Landroid/widget/AbsListView;

    if-eqz v1, :cond_4

    .line 149
    const-string v1, "_scrollList"

    const-string v2, "android.widget.AbsListView"

    const-string v4, "mOnScrollListener"

    invoke-static {p0, v2, v4}, Lit/unina/androidripper/helpers/ReflectionHelper;->checkIfFieldIsSet(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v1, "_selectListItem"

    const-string v2, "android.widget.AdapterView"

    const-string v4, "mOnItemSelectedListener"

    invoke-static {p0, v2, v4}, Lit/unina/androidripper/helpers/ReflectionHelper;->checkIfFieldIsSet(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v1, "selectListItem"

    const-string v2, "android.widget.AdapterView"

    const-string v4, "mOnItemClickListener"

    invoke-static {p0, v2, v4}, Lit/unina/androidripper/helpers/ReflectionHelper;->checkIfFieldIsSet(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v1, "longClickListItem"

    const-string v2, "android.widget.AdapterView"

    const-string v4, "mOnItemLongClickListener"

    invoke-static {p0, v2, v4}, Lit/unina/androidripper/helpers/ReflectionHelper;->checkIfFieldIsSet(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v1, "longClick"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v3, :cond_4

    .line 157
    const-string v1, "longClick"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v1, "longClickListItem"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4

    .line 160
    const-string v1, "longClickListItem"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :cond_4
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_5

    .line 166
    const-string v1, "_hierarchyChange"

    const-string v2, "android.view.ViewGroup"

    const-string v3, "mOnHierarchyChangeListener"

    invoke-static {p0, v2, v3}, Lit/unina/androidripper/helpers/ReflectionHelper;->checkIfFieldIsSet(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v1, "_animation"

    const-string v2, "android.view.ViewGroup"

    const-string v3, "mAnimationListener"

    invoke-static {p0, v2, v3}, Lit/unina/androidripper/helpers/ReflectionHelper;->checkIfFieldIsSet(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_5
    return-object v0

    :cond_6
    move v1, v2

    .line 130
    goto/16 :goto_0
.end method

.method public static scanClassForInterface(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 9
    .parameter
    .parameter "interfaceName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, myClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v5, 0x1

    .line 88
    invoke-static {p0, p1}, Lit/unina/androidripper/helpers/ReflectionHelper;->implementsInterface(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 90
    const-string v6, "androidripper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found interface : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :goto_0
    return v5

    .line 94
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/reflect/Field;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v1, v0, v3

    .line 96
    .local v1, field:Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    .line 99
    .local v2, fieldClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v2, p1}, Lit/unina/androidripper/helpers/ReflectionHelper;->implementsInterface(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 101
    const-string v6, "androidripper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found field implements : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 108
    const-string v6, "androidripper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found field inline definition : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 94
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 113
    .end local v1           #field:Ljava/lang/reflect/Field;
    .end local v2           #fieldClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_3
    const-string v5, "androidripper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not found : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method public static scanClassForInterface(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "className"
    .parameter "interfaceName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 67
    .local v0, myClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v0, p1}, Lit/unina/androidripper/helpers/ReflectionHelper;->scanClassForInterface(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method
