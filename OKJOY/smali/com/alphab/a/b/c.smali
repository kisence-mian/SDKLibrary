.class public final Lcom/alphab/a/b/c;
.super Lcom/alphab/a/b/b;
.source "ReqCampaignManager.java"


# instance fields
.field private i:Ljava/lang/String;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Lcom/mintegral/msdk/base/common/f/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0, p1}, Lcom/alphab/a/b/b;-><init>(Landroid/content/Context;)V

    .line 29
    const-string v0, "ReqCampaignManager"

    iput-object v0, p0, Lcom/alphab/a/b/c;->i:Ljava/lang/String;

    .line 32
    const-string v0, "1"

    iput-object v0, p0, Lcom/alphab/a/b/c;->l:Ljava/lang/String;

    .line 33
    iput v1, p0, Lcom/alphab/a/b/c;->m:I

    .line 36
    iput-boolean v1, p0, Lcom/alphab/a/b/c;->o:Z

    .line 52
    new-instance v0, Lcom/alphab/a/b/c$1;

    invoke-direct {v0, p0}, Lcom/alphab/a/b/c$1;-><init>(Lcom/alphab/a/b/c;)V

    iput-object v0, p0, Lcom/alphab/a/b/c;->p:Lcom/mintegral/msdk/base/common/f/a;

    .line 90
    new-instance v0, Lcom/mintegral/msdk/base/common/net/l;

    invoke-direct {v0}, Lcom/mintegral/msdk/base/common/net/l;-><init>()V

    iput-object v0, p0, Lcom/alphab/a/b/c;->e:Lcom/mintegral/msdk/base/common/net/l;

    .line 91
    return-void
.end method

.method static synthetic a(Lcom/alphab/a/b/c;)Ljava/util/List;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alphab/a/b/c;->j:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/alphab/a/b/c;Ljava/util/List;Ljava/lang/String;)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 1129
    if-eqz p1, :cond_9

    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    .line 1156
    :cond_9
    :goto_9
    return-void

    .line 1132
    :cond_a
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1135
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 1136
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 1137
    iget-object v0, p0, Lcom/alphab/a/b/c;->l:Ljava/lang/String;

    const-string v4, "2"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1138
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alphab/a/b/c;->n:Ljava/lang/String;

    :cond_29
    move v0, v1

    .line 1140
    :goto_2a
    if-ge v0, v3, :cond_47

    .line 1141
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1142
    const-string v4, "p"

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1143
    const-string v4, "v"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1144
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1140
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 1146
    :cond_47
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1147
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1148
    iget-object v1, p0, Lcom/alphab/a/b/c;->e:Lcom/mintegral/msdk/base/common/net/l;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/alphab/a/b/c;->a:Landroid/content/Context;

    if-eqz v1, :cond_9

    .line 1149
    iget-object v1, p0, Lcom/alphab/a/b/c;->e:Lcom/mintegral/msdk/base/common/net/l;

    const-string v2, "clever"

    invoke-virtual {v1, v2, v0}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    iget-object v0, p0, Lcom/alphab/a/b/c;->e:Lcom/mintegral/msdk/base/common/net/l;

    invoke-virtual {p0, v0}, Lcom/alphab/a/b/c;->a(Lcom/mintegral/msdk/base/common/net/l;)V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_63} :catch_64

    goto :goto_9

    .line 1152
    :catch_64
    move-exception v0

    .line 1153
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_9

    .line 1154
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9
.end method

.method static synthetic b(Lcom/alphab/a/b/c;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alphab/a/b/c;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alphab/a/b/c;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alphab/a/b/c;->i:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .registers 2

    .prologue
    .line 49
    iput p1, p0, Lcom/alphab/a/b/c;->m:I

    .line 50
    return-void
.end method

.method protected final a(Lcom/mintegral/msdk/base/common/net/l;)V
    .registers 5

    .prologue
    .line 161
    invoke-super {p0, p1}, Lcom/alphab/a/b/b;->a(Lcom/mintegral/msdk/base/common/net/l;)V

    .line 162
    const-string v0, "clever_type"

    iget-object v1, p0, Lcom/alphab/a/b/c;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v0, "ad_num"

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v0, "tnum"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v0, "only_impression"

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v0, "ping_mode"

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v0, "offset"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/alphab/a/b/c;->i:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cleverTypeUpValue:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alphab/a/b/c;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v0, "clever_update"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/alphab/a/b/c;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/alphab/a/b/c;->l:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 171
    const-string v0, "pkg_source"

    iget-object v1, p0, Lcom/alphab/a/b/c;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/alphab/a/b/c;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/c;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_6e
    iget-boolean v0, p0, Lcom/alphab/a/b/c;->o:Z

    if-eqz v0, :cond_79

    .line 174
    const-string v0, "ildt"

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_79
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 44
    iput-object p1, p0, Lcom/alphab/a/b/c;->l:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    if-nez p1, :cond_3

    .line 117
    :cond_2
    :goto_2
    return-void

    .line 103
    :cond_3
    iput-object p1, p0, Lcom/alphab/a/b/c;->j:Ljava/util/List;

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alphab/a/b/c;->k:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/alphab/a/b/c;->p:Lcom/mintegral/msdk/base/common/f/a;

    if-eqz v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/alphab/a/b/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alphab/i/c;->a(Landroid/content/Context;)Lcom/alphab/i/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alphab/i/c;->a()Lcom/alphab/i/c$b;

    move-result-object v0

    iget-object v1, p0, Lcom/alphab/a/b/c;->p:Lcom/mintegral/msdk/base/common/f/a;

    new-instance v2, Lcom/alphab/a/b/c$2;

    invoke-direct {v2, p0}, Lcom/alphab/a/b/c$2;-><init>(Lcom/alphab/a/b/c;)V

    invoke-virtual {v0, v1, v2}, Lcom/alphab/i/c$b;->a(Lcom/mintegral/msdk/base/common/f/a;Lcom/mintegral/msdk/base/common/f/a$b;)V

    goto :goto_2
.end method
