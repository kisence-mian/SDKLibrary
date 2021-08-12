.class public final Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i;
.super Ljava/lang/Object;
.source "ReflectiveTypeAdapterFactory.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/preload/a/w;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i$a;,
        Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/bytedance/sdk/openadsdk/preload/a/b/c;

.field private final b:Lcom/bytedance/sdk/openadsdk/preload/a/e;

.field private final c:Lcom/bytedance/sdk/openadsdk/preload/a/b/d;

.field private final d:Lcom/bytedance/sdk/openadsdk/preload/a/b/a/d;

.field private final e:Lcom/bytedance/sdk/openadsdk/preload/a/b/b/b;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/preload/a/b/c;Lcom/bytedance/sdk/openadsdk/preload/a/e;Lcom/bytedance/sdk/openadsdk/preload/a/b/d;Lcom/bytedance/sdk/openadsdk/preload/a/b/a/d;)V
    .registers 6

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/preload/a/b/b/b;->a()Lcom/bytedance/sdk/openadsdk/preload/a/b/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i;->e:Lcom/bytedance/sdk/openadsdk/preload/a/b/b/b;

    .line 59
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i;->a:Lcom/bytedance/sdk/openadsdk/preload/a/b/c;

    .line 60
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i;->b:Lcom/bytedance/sdk/openadsdk/preload/a/e;

    .line 61
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i;->c:Lcom/bytedance/sdk/openadsdk/preload/a/b/d;

    .line 62
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i;->d:Lcom/bytedance/sdk/openadsdk/preload/a/b/a/d;

    .line 63
    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/preload/a/f;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/preload/a/c/a;ZZ)Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i$b;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/a/f;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/preload/a/c/a<",
            "*>;ZZ)",
            "Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i$b;"
        }
    .end annotation

    .line 109
    move-object v11, p0

    move-object v8, p1

    move-object/from16 v9, p4

    invoke-virtual/range {p4 .. p4}, Lcom/bytedance/sdk/openadsdk/preload/a/c/a;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/k;->a(Ljava/lang/reflect/Type;)Z

    move-result v10

    .line 111
    const-class v0, Lcom/bytedance/sdk/openadsdk/preload/a/a/b;

    move-object v5, p2

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/a/a/b;

    .line 112
    nop

    .line 113
    if-eqz v0, :cond_21

    .line 114
    iget-object v1, v11, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i;->d:Lcom/bytedance/sdk/openadsdk/preload/a/b/a/d;

    iget-object v2, v11, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i;->a:Lcom/bytedance/sdk/openadsdk/preload/a/b/c;

    invoke-virtual {v1, v2, p1, v9, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/d;->a(Lcom/bytedance/sdk/openadsdk/preload/a/b/c;Lcom/bytedance/sdk/openadsdk/preload/a/f;Lcom/bytedance/sdk/openadsdk/preload/a/c/a;Lcom/bytedance/sdk/openadsdk/preload/a/a/b;)Lcom/bytedance/sdk/openadsdk/preload/a/v;

    move-result-object v0

    goto :goto_22

    .line 113
    :cond_21
    const/4 v0, 0x0

    .line 117
    :goto_22
    if-eqz v0, :cond_26

    const/4 v1, 0x1

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    :goto_27
    move v6, v1

    .line 118
    if-nez v0, :cond_2e

    invoke-virtual {p1, v9}, Lcom/bytedance/sdk/openadsdk/preload/a/f;->a(Lcom/bytedance/sdk/openadsdk/preload/a/c/a;)Lcom/bytedance/sdk/openadsdk/preload/a/v;

    move-result-object v0

    :cond_2e
    move-object v7, v0

    .line 120
    nop

    .line 121
    new-instance v12, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i$1;

    move-object v0, v12

    move-object v1, p0

    move-object/from16 v2, p3

    move/from16 v3, p5

    move/from16 v4, p6

    move-object v5, p2

    move-object v8, p1

    move-object/from16 v9, p4

    invoke-direct/range {v0 .. v10}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i$1;-><init>(Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i;Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLcom/bytedance/sdk/openadsdk/preload/a/v;Lcom/bytedance/sdk/openadsdk/preload/a/f;Lcom/bytedance/sdk/openadsdk/preload/a/c/a;Z)V

    return-object v12
.end method

.method private a(Ljava/lang/reflect/Field;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 75
    const-class v0, Lcom/bytedance/sdk/openadsdk/preload/a/a/c;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/a/a/c;

    .line 76
    if-nez v0, :cond_15

    .line 77
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i;->b:Lcom/bytedance/sdk/openadsdk/preload/a/e;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/e;->a(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object p1

    .line 78
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 81
    :cond_15
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/a/c;->a()Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/a/c;->b()[Ljava/lang/String;

    move-result-object v0

    .line 83
    array-length v1, v0

    if-nez v1, :cond_25

    .line 84
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 87
    :cond_25
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 88
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    array-length p1, v0

    const/4 v2, 0x0

    :goto_32
    if-ge v2, p1, :cond_3c

    aget-object v3, v0, v2

    .line 90
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 92
    :cond_3c
    return-object v1
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/preload/a/f;Lcom/bytedance/sdk/openadsdk/preload/a/c/a;Ljava/lang/Class;)Ljava/util/Map;
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/a/f;",
            "Lcom/bytedance/sdk/openadsdk/preload/a/c/a<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i$b;",
            ">;"
        }
    .end annotation

    .line 146
    move-object/from16 v7, p0

    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 147
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 148
    return-object v8

    .line 151
    :cond_e
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/openadsdk/preload/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v9

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    .line 152
    :goto_16
    const-class v0, Ljava/lang/Object;

    if-eq v11, v0, :cond_d5

    .line 153
    invoke-virtual {v11}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v12

    .line 154
    array-length v13, v12

    const/4 v14, 0x0

    move v15, v14

    :goto_21
    if-ge v15, v13, :cond_bf

    aget-object v6, v12, v15

    .line 155
    const/4 v0, 0x1

    invoke-virtual {v7, v6, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v0

    .line 156
    invoke-virtual {v7, v6, v14}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v16

    .line 157
    if-nez v0, :cond_34

    if-nez v16, :cond_34

    .line 158
    goto/16 :goto_9c

    .line 160
    :cond_34
    iget-object v1, v7, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i;->e:Lcom/bytedance/sdk/openadsdk/preload/a/b/b/b;

    invoke-virtual {v1, v6}, Lcom/bytedance/sdk/openadsdk/preload/a/b/b/b;->a(Ljava/lang/reflect/AccessibleObject;)V

    .line 161
    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/preload/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v1, v11, v2}, Lcom/bytedance/sdk/openadsdk/preload/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v17

    .line 162
    invoke-direct {v7, v6}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i;->a(Ljava/lang/reflect/Field;)Ljava/util/List;

    move-result-object v5

    .line 163
    const/4 v1, 0x0

    .line 164
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    move-object v3, v1

    move v2, v14

    :goto_50
    if-ge v2, v4, :cond_99

    .line 165
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 166
    if-eqz v2, :cond_5d

    move/from16 v18, v14

    goto :goto_5f

    :cond_5d
    move/from16 v18, v0

    .line 167
    :goto_5f
    nop

    .line 168
    invoke-static/range {v17 .. v17}, Lcom/bytedance/sdk/openadsdk/preload/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/bytedance/sdk/openadsdk/preload/a/c/a;

    move-result-object v19

    .line 167
    move-object/from16 v0, p0

    move-object/from16 p2, v1

    move-object/from16 v1, p1

    move/from16 v20, v2

    move-object v2, v6

    move-object v14, v3

    move-object/from16 v3, p2

    move/from16 v21, v4

    move-object/from16 v4, v19

    move-object/from16 v19, v5

    move/from16 v5, v18

    move-object/from16 v22, v6

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i;->a(Lcom/bytedance/sdk/openadsdk/preload/a/f;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/preload/a/c/a;ZZ)Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i$b;

    move-result-object v0

    .line 169
    move-object/from16 v1, p2

    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i$b;

    .line 170
    if-nez v14, :cond_8c

    move-object v3, v0

    goto :goto_8d

    :cond_8c
    move-object v3, v14

    .line 164
    :goto_8d
    add-int/lit8 v2, v20, 0x1

    move/from16 v0, v18

    move-object/from16 v5, v19

    move/from16 v4, v21

    move-object/from16 v6, v22

    const/4 v14, 0x0

    goto :goto_50

    .line 172
    :cond_99
    move-object v14, v3

    if-nez v14, :cond_a0

    .line 154
    :goto_9c
    add-int/lit8 v15, v15, 0x1

    const/4 v14, 0x0

    goto :goto_21

    .line 173
    :cond_a0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " declares multiple JSON fields named "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v14, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i$b;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_bf
    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/preload/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v11}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v11, v1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/bytedance/sdk/openadsdk/preload/a/c/a;

    move-result-object v10

    .line 178
    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/preload/a/c/a;->a()Ljava/lang/Class;

    move-result-object v11

    .line 179
    goto/16 :goto_16

    .line 180
    :cond_d5
    return-object v8
.end method

.method static a(Ljava/lang/reflect/Field;ZLcom/bytedance/sdk/openadsdk/preload/a/b/d;)Z
    .registers 4

    .line 70
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/d;->a(Ljava/lang/Class;Z)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p2, p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/d;->a(Ljava/lang/reflect/Field;Z)Z

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/preload/a/f;Lcom/bytedance/sdk/openadsdk/preload/a/c/a;)Lcom/bytedance/sdk/openadsdk/preload/a/v;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bytedance/sdk/openadsdk/preload/a/f;",
            "Lcom/bytedance/sdk/openadsdk/preload/a/c/a<",
            "TT;>;)",
            "Lcom/bytedance/sdk/openadsdk/preload/a/v<",
            "TT;>;"
        }
    .end annotation

    .line 96
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/a/c/a;->a()Ljava/lang/Class;

    move-result-object v0

    .line 98
    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 99
    const/4 p1, 0x0

    return-object p1

    .line 102
    :cond_e
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i;->a:Lcom/bytedance/sdk/openadsdk/preload/a/b/c;

    invoke-virtual {v1, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/b/c;->a(Lcom/bytedance/sdk/openadsdk/preload/a/c/a;)Lcom/bytedance/sdk/openadsdk/preload/a/b/i;

    move-result-object v1

    .line 103
    new-instance v2, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i$a;

    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i;->a(Lcom/bytedance/sdk/openadsdk/preload/a/f;Lcom/bytedance/sdk/openadsdk/preload/a/c/a;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i$a;-><init>(Lcom/bytedance/sdk/openadsdk/preload/a/b/i;Ljava/util/Map;)V

    return-object v2
.end method

.method public a(Ljava/lang/reflect/Field;Z)Z
    .registers 4

    .line 66
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i;->c:Lcom/bytedance/sdk/openadsdk/preload/a/b/d;

    invoke-static {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/i;->a(Ljava/lang/reflect/Field;ZLcom/bytedance/sdk/openadsdk/preload/a/b/d;)Z

    move-result p1

    return p1
.end method
