.class public final Lcom/anythink/myoffer/a/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/myoffer/a/d$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "play.google.com"

.field public static final b:Ljava/lang/String; = "market.android.com"

.field public static final c:Ljava/lang/String; = "details?"

.field public static final d:Ljava/lang/String; = "market"

.field public static final e:Ljava/lang/String; = "market://"


# instance fields
.field f:Lcom/anythink/myoffer/c/a;

.field g:Z

.field h:Z

.field i:Landroid/content/Context;

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:I

.field private final n:I

.field private final o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/anythink/myoffer/c/a;)V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/16 v0, 0xa

    iput v0, p0, Lcom/anythink/myoffer/a/d;->j:I

    .line 31
    iput v1, p0, Lcom/anythink/myoffer/a/d;->k:I

    .line 32
    const/4 v0, 0x2

    iput v0, p0, Lcom/anythink/myoffer/a/d;->l:I

    .line 33
    const/4 v0, 0x4

    iput v0, p0, Lcom/anythink/myoffer/a/d;->m:I

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/myoffer/a/d;->n:I

    .line 35
    iput v1, p0, Lcom/anythink/myoffer/a/d;->o:I

    .line 44
    iput-object p2, p0, Lcom/anythink/myoffer/a/d;->f:Lcom/anythink/myoffer/c/a;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/a/d;->i:Landroid/content/Context;

    .line 46
    return-void
.end method

.method private a(Lcom/anythink/myoffer/a/d$a;Ljava/lang/String;Z)V
    .registers 6

    .prologue
    .line 100
    invoke-static {}, Lcom/anythink/core/b/g/a/a;->a()Lcom/anythink/core/b/g/a/a;

    move-result-object v0

    new-instance v1, Lcom/anythink/myoffer/a/d$1;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/anythink/myoffer/a/d$1;-><init>(Lcom/anythink/myoffer/a/d;Ljava/lang/String;ZLcom/anythink/myoffer/a/d$a;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/g/a/a;->a(Ljava/lang/Runnable;)V

    .line 157
    return-void
.end method

.method static synthetic a(Lcom/anythink/myoffer/a/d;Ljava/lang/String;Lcom/anythink/myoffer/a/d$a;)V
    .registers 3

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/anythink/myoffer/a/d;->b(Ljava/lang/String;Lcom/anythink/myoffer/a/d$a;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 22
    invoke-static {p0}, Lcom/anythink/myoffer/a/d;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 217
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 218
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 219
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 220
    iget-object v1, p0, Lcom/anythink/myoffer/a/d;->i:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 229
    :goto_1c
    return-void

    .line 222
    :catch_1d
    move-exception v0

    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    new-instance v1, Lcom/anythink/myoffer/a/d$2;

    invoke-direct {v1, p0}, Lcom/anythink/myoffer/a/d$2;-><init>(Lcom/anythink/myoffer/a/d;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/a/e;->a(Ljava/lang/Runnable;)V

    goto :goto_1c
.end method

.method private b(Ljava/lang/String;Lcom/anythink/myoffer/a/d$a;)V
    .registers 5

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/anythink/myoffer/a/d;->h:Z

    if-eqz v0, :cond_5

    .line 196
    :cond_4
    :goto_4
    return-void

    .line 168
    :cond_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/anythink/myoffer/a/d;->f:Lcom/anythink/myoffer/c/a;

    invoke-virtual {v0}, Lcom/anythink/myoffer/c/a;->m()Ljava/lang/String;

    move-result-object p1

    .line 169
    :cond_11
    iget-object v0, p0, Lcom/anythink/myoffer/a/d;->f:Lcom/anythink/myoffer/c/a;

    invoke-virtual {v0}, Lcom/anythink/myoffer/c/a;->l()I

    move-result v0

    packed-switch v0, :pswitch_data_4a

    .line 189
    :pswitch_1a
    invoke-direct {p0, p1}, Lcom/anythink/myoffer/a/d;->c(Ljava/lang/String;)V

    .line 192
    :goto_1d
    if-eqz p2, :cond_4

    .line 193
    invoke-interface {p2}, Lcom/anythink/myoffer/a/d$a;->b()V

    goto :goto_4

    .line 171
    :pswitch_23
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 172
    invoke-direct {p0, p1}, Lcom/anythink/myoffer/a/d;->b(Ljava/lang/String;)V

    goto :goto_1d

    .line 174
    :cond_2f
    invoke-static {p1}, Lcom/anythink/myoffer/a/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 176
    invoke-direct {p0, v0}, Lcom/anythink/myoffer/a/d;->b(Ljava/lang/String;)V

    goto :goto_1d

    .line 178
    :cond_3d
    invoke-direct {p0, p1}, Lcom/anythink/myoffer/a/d;->c(Ljava/lang/String;)V

    goto :goto_1d

    .line 183
    :pswitch_41
    invoke-direct {p0, p1}, Lcom/anythink/myoffer/a/d;->c(Ljava/lang/String;)V

    goto :goto_1d

    .line 186
    :pswitch_45
    invoke-direct {p0, p1, p2}, Lcom/anythink/myoffer/a/d;->c(Ljava/lang/String;Lcom/anythink/myoffer/a/d$a;)V

    goto :goto_1d

    .line 169
    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_23
        :pswitch_41
        :pswitch_1a
        :pswitch_45
    .end packed-switch
.end method

.method private c(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 238
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    .line 239
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 240
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 242
    iget-object v1, p0, Lcom/anythink/myoffer/a/d;->i:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 246
    :goto_16
    return-void

    .line 244
    :catch_17
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16
.end method

.method private c(Ljava/lang/String;Lcom/anythink/myoffer/a/d$a;)V
    .registers 4

    .prologue
    .line 199
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->b()Lcom/anythink/core/api/IATChinaSDKHandler;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 200
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, ".apk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 201
    if-eqz p2, :cond_1d

    .line 202
    invoke-interface {p2, p1}, Lcom/anythink/myoffer/a/d$a;->a(Ljava/lang/String;)V

    .line 208
    :cond_1d
    :goto_1d
    return-void

    .line 207
    :cond_1e
    invoke-direct {p0, p1}, Lcom/anythink/myoffer/a/d;->c(Ljava/lang/String;)V

    goto :goto_1d
.end method

.method private static d(Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 256
    :try_start_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 267
    :cond_7
    :goto_7
    return v0

    .line 259
    :cond_8
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 260
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 263
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    const-string v3, "play.google.com"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 264
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "market.android.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_29} :catch_2e

    move-result v1

    if-eqz v1, :cond_7

    :cond_2c
    const/4 v0, 0x1

    goto :goto_7

    .line 267
    :catch_2e
    move-exception v1

    goto :goto_7
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 278
    :try_start_0
    invoke-static {p0}, Lcom/anythink/myoffer/a/d;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 279
    const-string v0, "details?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 280
    const-string v1, "market://"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_19} :catch_1b

    move-result-object v0

    .line 288
    :goto_1a
    return-object v0

    :catch_1b
    move-exception v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1a
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 295
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/myoffer/a/d;->h:Z

    .line 296
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/myoffer/a/d$a;)V
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    iget-boolean v0, p0, Lcom/anythink/myoffer/a/d;->g:Z

    if-eqz v0, :cond_7

    .line 93
    :goto_6
    return-void

    .line 58
    :cond_7
    invoke-interface {p2}, Lcom/anythink/myoffer/a/d$a;->a()V

    .line 61
    iput-boolean v4, p0, Lcom/anythink/myoffer/a/d;->g:Z

    .line 62
    iput-boolean v3, p0, Lcom/anythink/myoffer/a/d;->h:Z

    .line 63
    iget-object v0, p0, Lcom/anythink/myoffer/a/d;->f:Lcom/anythink/myoffer/c/a;

    invoke-virtual {v0}, Lcom/anythink/myoffer/c/a;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/anythink/myoffer/a/d;->f:Lcom/anythink/myoffer/c/a;

    invoke-virtual {v0}, Lcom/anythink/myoffer/c/a;->o()Ljava/lang/String;

    move-result-object v0

    :goto_1c
    const-string v1, "\\{req_id\\}"

    if-nez p1, :cond_22

    const-string p1, ""

    :cond_22
    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/anythink/myoffer/a/d;->f:Lcom/anythink/myoffer/c/a;

    invoke-virtual {v1}, Lcom/anythink/myoffer/c/a;->l()I

    move-result v1

    if-eq v1, v4, :cond_43

    iget-object v1, p0, Lcom/anythink/myoffer/a/d;->f:Lcom/anythink/myoffer/c/a;

    invoke-virtual {v1}, Lcom/anythink/myoffer/c/a;->l()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_43

    .line 66
    invoke-direct {p0, v0}, Lcom/anythink/myoffer/a/d;->c(Ljava/lang/String;)V

    .line 67
    iput-boolean v3, p0, Lcom/anythink/myoffer/a/d;->g:Z

    .line 69
    invoke-interface {p2}, Lcom/anythink/myoffer/a/d$a;->b()V

    goto :goto_6

    .line 63
    :cond_40
    const-string v0, ""

    goto :goto_1c

    .line 74
    :cond_43
    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 75
    invoke-direct {p0, v0, p2}, Lcom/anythink/myoffer/a/d;->b(Ljava/lang/String;Lcom/anythink/myoffer/a/d$a;)V

    .line 76
    iput-boolean v3, p0, Lcom/anythink/myoffer/a/d;->g:Z

    goto :goto_6

    .line 80
    :cond_51
    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_65

    .line 81
    iget-object v0, p0, Lcom/anythink/myoffer/a/d;->f:Lcom/anythink/myoffer/c/a;

    invoke-virtual {v0}, Lcom/anythink/myoffer/c/a;->o()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/anythink/myoffer/a/d;->b(Ljava/lang/String;Lcom/anythink/myoffer/a/d$a;)V

    .line 82
    iput-boolean v3, p0, Lcom/anythink/myoffer/a/d;->g:Z

    goto :goto_6

    .line 86
    :cond_65
    iget-object v1, p0, Lcom/anythink/myoffer/a/d;->f:Lcom/anythink/myoffer/c/a;

    invoke-virtual {v1}, Lcom/anythink/myoffer/c/a;->a()I

    move-result v1

    if-ne v1, v4, :cond_7b

    .line 87
    iget-object v1, p0, Lcom/anythink/myoffer/a/d;->f:Lcom/anythink/myoffer/c/a;

    invoke-virtual {v1}, Lcom/anythink/myoffer/c/a;->m()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/anythink/myoffer/a/d;->b(Ljava/lang/String;Lcom/anythink/myoffer/a/d$a;)V

    .line 88
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v3}, Lcom/anythink/myoffer/a/d;->a(Lcom/anythink/myoffer/a/d$a;Ljava/lang/String;Z)V

    goto :goto_6

    .line 92
    :cond_7b
    invoke-direct {p0, p2, v0, v4}, Lcom/anythink/myoffer/a/d;->a(Lcom/anythink/myoffer/a/d$a;Ljava/lang/String;Z)V

    goto :goto_6
.end method
