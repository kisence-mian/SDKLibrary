.class public final Lcom/alphab/a/b/d;
.super Lcom/alphab/a/b/b;
.source "ReqPKGAndReportManager.java"


# instance fields
.field private i:Lcom/mintegral/msdk/base/common/net/l;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Lcom/mintegral/msdk/base/common/f/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/alphab/a/b/b;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v0, Lcom/mintegral/msdk/base/common/net/l;

    invoke-direct {v0}, Lcom/mintegral/msdk/base/common/net/l;-><init>()V

    iput-object v0, p0, Lcom/alphab/a/b/d;->i:Lcom/mintegral/msdk/base/common/net/l;

    .line 33
    new-instance v0, Lcom/alphab/a/b/d$1;

    invoke-direct {v0, p0}, Lcom/alphab/a/b/d$1;-><init>(Lcom/alphab/a/b/d;)V

    iput-object v0, p0, Lcom/alphab/a/b/d;->o:Lcom/mintegral/msdk/base/common/f/a;

    .line 67
    return-void
.end method

.method static synthetic a(Lcom/alphab/a/b/d;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alphab/a/b/d;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alphab/a/b/d;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .prologue
    .line 24
    .line 1110
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1111
    const-string p2, ""

    .line 1113
    :cond_8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1114
    const-string p1, ""

    .line 1116
    :cond_10
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1117
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1a} :catch_81

    .line 1120
    :try_start_1a
    const-string v0, "p"

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1121
    const-string v0, "v"

    invoke-virtual {v2, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1122
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 1123
    if-eqz p3, :cond_42

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-ltz v0, :cond_42

    .line 1124
    const/4 v0, 0x0

    :goto_32
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_42

    .line 1125
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1124
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 1128
    :cond_42
    const-string v0, "ul"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1129
    const-string v0, "kw"

    invoke-virtual {v2, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1130
    const-string v0, "fl"

    invoke-virtual {v2, v0, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_51} :catch_78

    .line 1140
    :cond_51
    :goto_51
    :try_start_51
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1141
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1142
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1143
    new-instance v1, Lcom/mintegral/msdk/base/common/net/l;

    invoke-direct {v1}, Lcom/mintegral/msdk/base/common/net/l;-><init>()V

    iput-object v1, p0, Lcom/alphab/a/b/d;->i:Lcom/mintegral/msdk/base/common/net/l;

    .line 1144
    iget-object v1, p0, Lcom/alphab/a/b/d;->i:Lcom/mintegral/msdk/base/common/net/l;

    if-eqz v1, :cond_72

    iget-object v1, p0, Lcom/alphab/a/b/d;->a:Landroid/content/Context;

    if-eqz v1, :cond_72

    .line 1145
    iget-object v1, p0, Lcom/alphab/a/b/d;->i:Lcom/mintegral/msdk/base/common/net/l;

    const-string v2, "clever"

    invoke-virtual {v1, v2, v0}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    :cond_72
    iget-object v0, p0, Lcom/alphab/a/b/d;->i:Lcom/mintegral/msdk/base/common/net/l;

    invoke-virtual {p0, v0}, Lcom/alphab/a/b/d;->a(Lcom/mintegral/msdk/base/common/net/l;)V

    .line 1153
    :cond_77
    :goto_77
    return-void

    .line 1132
    :catch_78
    move-exception v0

    .line 1133
    sget-boolean v3, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v3, :cond_51

    .line 1134
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_80
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_80} :catch_81

    goto :goto_51

    .line 1149
    :catch_81
    move-exception v0

    .line 1150
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_77

    .line 1151
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_77
.end method

.method static synthetic b(Lcom/alphab/a/b/d;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alphab/a/b/d;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alphab/a/b/d;)Ljava/util/List;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alphab/a/b/d;->l:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/alphab/a/b/d;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alphab/a/b/d;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/alphab/a/b/d;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alphab/a/b/d;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/alphab/a/b/d;)Lcom/mintegral/msdk/base/common/net/l;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alphab/a/b/d;->i:Lcom/mintegral/msdk/base/common/net/l;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/alphab/a/b/f;)V
    .registers 2

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alphab/a/b/d;->g:Lcom/alphab/a/b/f;

    .line 72
    return-void
.end method

.method protected final a(Lcom/mintegral/msdk/base/common/net/l;)V
    .registers 4

    .prologue
    .line 159
    invoke-super {p0, p1}, Lcom/alphab/a/b/b;->a(Lcom/mintegral/msdk/base/common/net/l;)V

    .line 160
    const-string v0, "is_clever"

    sget-object v1, Lcom/mintegral/msdk/base/common/a;->v:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alphab/a/b/d;->j:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lcom/alphab/a/b/d;->k:Ljava/lang/String;

    .line 84
    iput-object p3, p0, Lcom/alphab/a/b/d;->l:Ljava/util/List;

    .line 85
    iput-object p4, p0, Lcom/alphab/a/b/d;->m:Ljava/lang/String;

    .line 86
    iput-object p5, p0, Lcom/alphab/a/b/d;->n:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/alphab/a/b/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alphab/i/c;->a(Landroid/content/Context;)Lcom/alphab/i/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alphab/i/c;->a()Lcom/alphab/i/c$b;

    move-result-object v0

    iget-object v1, p0, Lcom/alphab/a/b/d;->o:Lcom/mintegral/msdk/base/common/f/a;

    new-instance v2, Lcom/alphab/a/b/d$2;

    invoke-direct {v2, p0}, Lcom/alphab/a/b/d$2;-><init>(Lcom/alphab/a/b/d;)V

    invoke-virtual {v0, v1, v2}, Lcom/alphab/i/c$b;->a(Lcom/mintegral/msdk/base/common/f/a;Lcom/mintegral/msdk/base/common/f/a$b;)V

    .line 97
    return-void
.end method
