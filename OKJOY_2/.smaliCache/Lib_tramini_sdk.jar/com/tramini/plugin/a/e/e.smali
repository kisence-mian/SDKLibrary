.class public Lcom/tramini/plugin/a/e/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tramini/plugin/a/e/e$a;,
        Lcom/tramini/plugin/a/e/e$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    .line 63
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 64
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 65
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_12

    return-object p0

    .line 66
    :catchall_12
    move-exception p0

    .line 68
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/StringBuffer;Lcom/tramini/plugin/a/e/e$b;)Ljava/lang/Object;
    .registers 11

    .line 83
    const/4 v0, 0x0

    if-nez p3, :cond_4

    .line 84
    return-object v0

    .line 87
    :cond_4
    if-eqz p0, :cond_b2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b2

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

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

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    :try_start_32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 93
    if-eqz v1, :cond_3f

    array-length v2, v1

    if-nez v2, :cond_4b

    .line 94
    :cond_3f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 96
    :cond_4b
    if-eqz v1, :cond_b0

    array-length v2, v1

    if-eqz v2, :cond_b0

    .line 97
    array-length v2, v1

    const/4 v3, 0x0

    :goto_52
    if-ge v3, v2, :cond_b0

    aget-object v4, v1, v3

    .line 98
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 100
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 102
    if-eqz v4, :cond_ad

    .line 104
    invoke-interface {p3, v4}, Lcom/tramini/plugin/a/e/e$b;->a(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_94

    .line 106
    invoke-interface {p3, v4}, Lcom/tramini/plugin/a/e/e$b;->b(Ljava/lang/Object;)Lcom/tramini/plugin/a/e/e$a;

    move-result-object v4

    .line 107
    iget v6, v4, Lcom/tramini/plugin/a/e/e$a;->d:I

    .line 108
    if-eqz v6, :cond_ad

    .line 110
    if-ne v6, v5, :cond_73

    .line 111
    iget-object p0, v4, Lcom/tramini/plugin/a/e/e$a;->e:Ljava/lang/Object;

    .line 115
    return-object p0

    .line 116
    :cond_73
    const/4 v5, -0x1

    if-ne v6, v5, :cond_93

    .line 117
    iget-object v4, v4, Lcom/tramini/plugin/a/e/e$a;->e:Ljava/lang/Object;

    .line 118
    if-eqz v4, :cond_93

    .line 119
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_93

    .line 123
    invoke-static {v4, p1, p2, p3}, Lcom/tramini/plugin/a/e/e;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/StringBuffer;Lcom/tramini/plugin/a/e/e$b;)Ljava/lang/Object;

    move-result-object v4

    .line 124
    if-eqz v4, :cond_93

    .line 125
    return-object v4

    .line 130
    :cond_93
    goto :goto_ad

    .line 131
    :cond_94
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_ad

    .line 135
    invoke-static {v4, p1, p2, p3}, Lcom/tramini/plugin/a/e/e;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/StringBuffer;Lcom/tramini/plugin/a/e/e$b;)Ljava/lang/Object;

    move-result-object v4
    :try_end_aa
    .catchall {:try_start_32 .. :try_end_aa} :catchall_b1

    .line 136
    if-eqz v4, :cond_ad

    .line 137
    return-object v4

    .line 97
    :cond_ad
    :goto_ad
    add-int/lit8 v3, v3, 0x1

    goto :goto_52

    .line 148
    :cond_b0
    goto :goto_b2

    .line 144
    :catchall_b1
    move-exception p0

    .line 150
    :cond_b2
    :goto_b2
    return-object v0
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 8

    .line 23
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 24
    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {p0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 25
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 28
    if-eqz v1, :cond_41

    .line 30
    array-length v3, v1

    :goto_1f
    if-ge v2, v3, :cond_40

    aget-object v4, v1, v2

    .line 31
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 32
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 33
    instance-of v5, v5, Ljava/util/Map;

    if-eqz v5, :cond_3d

    .line 34
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 35
    if-nez p0, :cond_38

    .line 36
    return-object v0

    .line 38
    :cond_38
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_42

    return-object p0

    .line 30
    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 42
    :cond_40
    return-object v0

    .line 47
    :cond_41
    goto :goto_43

    .line 45
    :catchall_42
    move-exception p0

    .line 48
    :goto_43
    return-object v0
.end method

.method protected static b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 73
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 75
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 76
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return-object p0

    .line 77
    :catchall_11
    move-exception p0

    .line 79
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    .line 53
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 54
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p0, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 55
    new-array p1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_13

    return-object p0

    .line 56
    :catchall_13
    move-exception p0

    .line 58
    return-object v0
.end method
