.class public Lcom/tramini/plugin/a/d/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tramini/plugin/a/d/e$a;,
        Lcom/tramini/plugin/a/d/e$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 56
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 57
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 58
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11} :catch_13

    move-result-object v0

    .line 61
    :goto_12
    return-object v0

    :catch_13
    move-exception v0

    const/4 v0, 0x0

    goto :goto_12
.end method

.method protected static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/tramini/plugin/a/d/e$b;)Ljava/lang/Object;
    .registers 13

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 76
    if-nez p3, :cond_5

    .line 140
    :cond_4
    :goto_4
    return-object v0

    .line 80
    :cond_5
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 85
    :try_start_34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 86
    if-eqz v1, :cond_41

    array-length v2, v1

    if-nez v2, :cond_b3

    .line 87
    :cond_41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    move-object v3, v1

    .line 89
    :goto_4e
    if-eqz v3, :cond_4

    array-length v1, v3

    if-eqz v1, :cond_4

    .line 90
    array-length v5, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_56
    if-ge v2, v5, :cond_4

    aget-object v1, v3, v2

    .line 91
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 93
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 95
    if-eqz v1, :cond_ac

    .line 97
    invoke-interface {p3, v1}, Lcom/tramini/plugin/a/d/e$b;->a(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_95

    .line 102
    invoke-interface {p3, v1}, Lcom/tramini/plugin/a/d/e$b;->b(Ljava/lang/Object;)Lcom/tramini/plugin/a/d/e$a;

    move-result-object v1

    .line 103
    iget v6, v1, Lcom/tramini/plugin/a/d/e$a;->d:I

    .line 104
    if-eqz v6, :cond_ac

    .line 106
    if-ne v6, v8, :cond_77

    .line 107
    iget-object v0, v1, Lcom/tramini/plugin/a/d/e$a;->e:Ljava/lang/Object;

    goto :goto_4

    .line 112
    :cond_77
    const/4 v7, -0x1

    if-ne v6, v7, :cond_ac

    .line 113
    iget-object v1, v1, Lcom/tramini/plugin/a/d/e$a;->e:Ljava/lang/Object;

    .line 114
    if-eqz v1, :cond_ac

    .line 115
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_ac

    .line 116
    invoke-static {v1, p1, v4, p3}, Lcom/tramini/plugin/a/d/e;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/tramini/plugin/a/d/e$b;)Ljava/lang/Object;

    move-result-object v1

    .line 117
    if-eqz v1, :cond_ac

    move-object v0, v1

    .line 118
    goto/16 :goto_4

    .line 124
    :cond_95
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_ac

    .line 125
    invoke-static {v1, p1, v4, p3}, Lcom/tramini/plugin/a/d/e;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/tramini/plugin/a/d/e$b;)Ljava/lang/Object;
    :try_end_a6
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_a6} :catch_b0

    move-result-object v1

    .line 126
    if-eqz v1, :cond_ac

    move-object v0, v1

    .line 127
    goto/16 :goto_4

    .line 90
    :cond_ac
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_56

    :catch_b0
    move-exception v1

    goto/16 :goto_4

    :cond_b3
    move-object v3, v1

    goto :goto_4e
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 9

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 16
    :try_start_2
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 17
    const-string v3, "getInstance"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 18
    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 20
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 21
    if-eqz v3, :cond_47

    .line 23
    array-length v4, v3

    :goto_22
    if-ge v0, v4, :cond_44

    aget-object v5, v3, v0

    .line 24
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 25
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 26
    instance-of v6, v6, Ljava/util/Map;

    if-eqz v6, :cond_41

    .line 27
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 28
    if-nez v0, :cond_3c

    move-object v0, v1

    .line 41
    :goto_3b
    return-object v0

    .line 31
    :cond_3c
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_3f} :catch_46

    move-result-object v0

    goto :goto_3b

    .line 23
    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_44
    move-object v0, v1

    .line 35
    goto :goto_3b

    :catch_46
    move-exception v0

    :cond_47
    move-object v0, v1

    .line 41
    goto :goto_3b
.end method

.method protected static b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 66
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 68
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 69
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v0

    .line 72
    :goto_10
    return-object v0

    :catch_11
    move-exception v0

    const/4 v0, 0x0

    goto :goto_10
.end method

.method protected static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 46
    :try_start_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 47
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 48
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_13} :catch_15

    move-result-object v0

    .line 51
    :goto_14
    return-object v0

    :catch_15
    move-exception v1

    goto :goto_14
.end method
