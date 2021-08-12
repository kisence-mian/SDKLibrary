.class public final Lcom/anythink/basead/e/b/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/basead/e/b/b$a;
    }
.end annotation


# static fields
.field private static c:Lcom/anythink/basead/e/b/b;


# instance fields
.field a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/e/b/b;->b:Landroid/content/Context;

    .line 39
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object p1, p0, Lcom/anythink/basead/e/b/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/anythink/basead/e/b/b;)Landroid/content/Context;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/anythink/basead/e/b/b;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/anythink/basead/e/b/b;
    .registers 3

    const-class v0, Lcom/anythink/basead/e/b/b;

    monitor-enter v0

    .line 43
    :try_start_3
    sget-object v1, Lcom/anythink/basead/e/b/b;->c:Lcom/anythink/basead/e/b/b;

    if-nez v1, :cond_e

    .line 44
    new-instance v1, Lcom/anythink/basead/e/b/b;

    invoke-direct {v1, p0}, Lcom/anythink/basead/e/b/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/anythink/basead/e/b/b;->c:Lcom/anythink/basead/e/b/b;

    .line 46
    :cond_e
    sget-object p0, Lcom/anythink/basead/e/b/b;->c:Lcom/anythink/basead/e/b/b;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    .line 42
    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic a(Lcom/anythink/basead/e/b/b;Lcom/anythink/core/common/d/t;Lcom/anythink/core/common/d/i;Lcom/anythink/basead/e/b/b$a;)V
    .registers 4

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/basead/e/b/b;->a(Lcom/anythink/core/common/d/t;Lcom/anythink/core/common/d/i;Lcom/anythink/basead/e/b/b$a;)V

    return-void
.end method

.method private a(Lcom/anythink/core/common/d/t;Lcom/anythink/core/common/d/i;Lcom/anythink/basead/e/b/b$a;)V
    .registers 7

    .line 171
    invoke-static {}, Lcom/anythink/basead/a/d;->a()Lcom/anythink/basead/a/d;

    iget-object v0, p2, Lcom/anythink/core/common/d/i;->b:Ljava/lang/String;

    iget-object v1, p2, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    new-instance v2, Lcom/anythink/basead/e/b/b$2;

    invoke-direct {v2, p0, p2, p3, p1}, Lcom/anythink/basead/e/b/b$2;-><init>(Lcom/anythink/basead/e/b/b;Lcom/anythink/core/common/d/i;Lcom/anythink/basead/e/b/b$a;Lcom/anythink/core/common/d/t;)V

    invoke-static {v0, p1, v1, v2}, Lcom/anythink/basead/a/d;->a(Ljava/lang/String;Lcom/anythink/core/common/d/h;Lcom/anythink/core/common/d/j;Lcom/anythink/basead/a/a/a$a;)V

    .line 189
    return-void
.end method

.method private b(Lcom/anythink/core/common/d/i;Lcom/anythink/basead/e/b/b$a;)V
    .registers 10

    .line 63
    nop

    .line 65
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/anythink/basead/e/b/b;->a(Lcom/anythink/core/common/d/i;)Lcom/anythink/core/common/d/t;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_6

    .line 68
    goto :goto_8

    .line 66
    :catchall_6
    move-exception v0

    const/4 v0, 0x0

    .line 70
    :goto_8
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/anythink/core/common/d/t;->w()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_1a

    .line 163
    :cond_11
    if-eqz p2, :cond_16

    .line 164
    invoke-interface {p2}, Lcom/anythink/basead/e/b/b$a;->a()V

    .line 166
    :cond_16
    invoke-direct {p0, v0, p1, p2}, Lcom/anythink/basead/e/b/b;->a(Lcom/anythink/core/common/d/t;Lcom/anythink/core/common/d/i;Lcom/anythink/basead/e/b/b$a;)V

    .line 168
    return-void

    .line 71
    :cond_1a
    :goto_1a
    nop

    .line 72
    nop

    .line 73
    iget-object v0, p1, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    invoke-virtual {v0}, Lcom/anythink/core/common/d/j;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_49

    .line 75
    :try_start_29
    iget-object v0, p1, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    invoke-virtual {v0}, Lcom/anythink/core/common/d/j;->h()Ljava/lang/String;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 76
    aget-object v2, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_3b
    .catchall {:try_start_29 .. :try_end_3b} :catchall_45

    .line 77
    const/4 v3, 0x1

    :try_start_3c
    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_42
    .catchall {:try_start_3c .. :try_end_42} :catchall_43

    .line 80
    goto :goto_4b

    .line 78
    :catchall_43
    move-exception v0

    goto :goto_47

    :catchall_45
    move-exception v0

    move v2, v1

    :goto_47
    move v0, v1

    goto :goto_4b

    .line 73
    :cond_49
    move v0, v1

    move v2, v0

    .line 82
    :goto_4b
    invoke-static {}, Lcom/anythink/basead/e/c/b;->a()Lcom/anythink/basead/e/c/b;

    move-result-object v3

    iget-object v4, p0, Lcom/anythink/basead/e/b/b;->b:Landroid/content/Context;

    iget-object v5, p1, Lcom/anythink/core/common/d/i;->b:Ljava/lang/String;

    iget-object v6, p1, Lcom/anythink/core/common/d/i;->c:Ljava/lang/String;

    .line 84
    invoke-static {v5, v6}, Lcom/anythink/basead/e/c/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 83
    invoke-virtual {v3, v4, v5}, Lcom/anythink/basead/e/c/b;->a(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 86
    new-instance v4, Lcom/anythink/basead/h/d;

    invoke-direct {v4, p1, v2, v0, v3}, Lcom/anythink/basead/h/d;-><init>(Lcom/anythink/core/common/d/i;II[Ljava/lang/String;)V

    .line 87
    new-instance v0, Lcom/anythink/basead/e/b/b$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/anythink/basead/e/b/b$1;-><init>(Lcom/anythink/basead/e/b/b;Lcom/anythink/core/common/d/i;Lcom/anythink/basead/e/b/b$a;)V

    invoke-virtual {v4, v1, v0}, Lcom/anythink/basead/h/d;->a(ILcom/anythink/core/common/e/g;)V

    .line 162
    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/core/common/d/i;)Lcom/anythink/core/common/d/t;
    .registers 6

    .line 192
    invoke-static {}, Lcom/anythink/basead/e/b/a;->a()Lcom/anythink/basead/e/b/a;

    invoke-static {p1}, Lcom/anythink/basead/e/b/a;->a(Lcom/anythink/core/common/d/i;)Ljava/lang/String;

    move-result-object v0

    .line 193
    nop

    .line 194
    invoke-static {}, Lcom/anythink/basead/e/b/a;->a()Lcom/anythink/basead/e/b/a;

    iget-object v1, p0, Lcom/anythink/basead/e/b/b;->b:Landroid/content/Context;

    .line 2035
    sget-object v2, Lcom/anythink/core/common/b/e;->u:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v1, v2, v0, v3}, Lcom/anythink/core/common/g/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    nop

    .line 195
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    .line 196
    return-object v2

    .line 199
    :cond_1e
    :try_start_1e
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/anythink/basead/e/b/c;->a(Lcom/anythink/core/common/d/i;Lorg/json/JSONObject;)Lcom/anythink/core/common/d/t;

    move-result-object v2
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_28

    .line 202
    goto :goto_29

    .line 200
    :catchall_28
    move-exception v0

    .line 203
    :goto_29
    if-eqz v2, :cond_2e

    .line 205
    invoke-static {p1, v2}, Lcom/anythink/basead/e/c/a;->a(Lcom/anythink/core/common/d/i;Lcom/anythink/core/common/d/u;)V

    .line 208
    :cond_2e
    return-object v2
.end method

.method public final a(Lcom/anythink/core/common/d/i;Lcom/anythink/basead/e/b/b$a;)V
    .registers 10

    .line 51
    invoke-static {}, Lcom/anythink/basead/e/b/a;->a()Lcom/anythink/basead/e/b/a;

    invoke-static {p1}, Lcom/anythink/basead/e/b/a;->a(Lcom/anythink/core/common/d/i;)Ljava/lang/String;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/anythink/basead/e/b/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/anythink/basead/e/b/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 54
    const-string p1, "20005"

    const-string v0, "Offer data is loading."

    invoke-static {p1, v0}, Lcom/anythink/basead/c/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/f;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/anythink/basead/e/b/b$a;->a(Lcom/anythink/basead/c/f;)V

    .line 56
    return-void

    .line 58
    :cond_29
    iget-object v1, p0, Lcom/anythink/basead/e/b/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    nop

    .line 1063
    const/4 v0, 0x0

    .line 1065
    :try_start_32
    invoke-virtual {p0, p1}, Lcom/anythink/basead/e/b/b;->a(Lcom/anythink/core/common/d/i;)Lcom/anythink/core/common/d/t;

    move-result-object v0
    :try_end_36
    .catchall {:try_start_32 .. :try_end_36} :catchall_37

    .line 1068
    goto :goto_38

    .line 1066
    :catchall_37
    move-exception v1

    .line 1070
    :goto_38
    if-eqz v0, :cond_48

    invoke-virtual {v0}, Lcom/anythink/core/common/d/t;->w()Z

    move-result v1

    if-eqz v1, :cond_41

    goto :goto_48

    .line 1164
    :cond_41
    invoke-interface {p2}, Lcom/anythink/basead/e/b/b$a;->a()V

    .line 1166
    invoke-direct {p0, v0, p1, p2}, Lcom/anythink/basead/e/b/b;->a(Lcom/anythink/core/common/d/t;Lcom/anythink/core/common/d/i;Lcom/anythink/basead/e/b/b$a;)V

    .line 60
    return-void

    .line 1071
    :cond_48
    :goto_48
    nop

    .line 1072
    nop

    .line 1073
    iget-object v0, p1, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    invoke-virtual {v0}, Lcom/anythink/core/common/d/j;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_77

    .line 1075
    :try_start_57
    iget-object v0, p1, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    invoke-virtual {v0}, Lcom/anythink/core/common/d/j;->h()Ljava/lang/String;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1076
    aget-object v2, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_69
    .catchall {:try_start_57 .. :try_end_69} :catchall_73

    .line 1077
    const/4 v3, 0x1

    :try_start_6a
    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_70
    .catchall {:try_start_6a .. :try_end_70} :catchall_71

    .line 1080
    goto :goto_79

    .line 1078
    :catchall_71
    move-exception v0

    goto :goto_75

    :catchall_73
    move-exception v0

    move v2, v1

    :goto_75
    move v0, v1

    goto :goto_79

    .line 1073
    :cond_77
    move v0, v1

    move v2, v0

    .line 1082
    :goto_79
    invoke-static {}, Lcom/anythink/basead/e/c/b;->a()Lcom/anythink/basead/e/c/b;

    move-result-object v3

    iget-object v4, p0, Lcom/anythink/basead/e/b/b;->b:Landroid/content/Context;

    iget-object v5, p1, Lcom/anythink/core/common/d/i;->b:Ljava/lang/String;

    iget-object v6, p1, Lcom/anythink/core/common/d/i;->c:Ljava/lang/String;

    .line 1084
    invoke-static {v5, v6}, Lcom/anythink/basead/e/c/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1083
    invoke-virtual {v3, v4, v5}, Lcom/anythink/basead/e/c/b;->a(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1086
    new-instance v4, Lcom/anythink/basead/h/d;

    invoke-direct {v4, p1, v2, v0, v3}, Lcom/anythink/basead/h/d;-><init>(Lcom/anythink/core/common/d/i;II[Ljava/lang/String;)V

    .line 1087
    new-instance v0, Lcom/anythink/basead/e/b/b$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/anythink/basead/e/b/b$1;-><init>(Lcom/anythink/basead/e/b/b;Lcom/anythink/core/common/d/i;Lcom/anythink/basead/e/b/b$a;)V

    invoke-virtual {v4, v1, v0}, Lcom/anythink/basead/h/d;->a(ILcom/anythink/core/common/e/g;)V

    .line 1162
    return-void
.end method
