.class final Lcom/anythink/myoffer/a/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/myoffer/a/d;->a(Lcom/anythink/myoffer/a/d$a;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/anythink/myoffer/a/d$a;

.field final synthetic d:Lcom/anythink/myoffer/a/d;


# direct methods
.method constructor <init>(Lcom/anythink/myoffer/a/d;Ljava/lang/String;ZLcom/anythink/myoffer/a/d$a;)V
    .registers 5

    .prologue
    .line 100
    iput-object p1, p0, Lcom/anythink/myoffer/a/d$1;->d:Lcom/anythink/myoffer/a/d;

    iput-object p2, p0, Lcom/anythink/myoffer/a/d$1;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/anythink/myoffer/a/d$1;->b:Z

    iput-object p4, p0, Lcom/anythink/myoffer/a/d$1;->c:Lcom/anythink/myoffer/a/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 103
    iget-object v1, p0, Lcom/anythink/myoffer/a/d$1;->a:Ljava/lang/String;

    move v4, v2

    .line 105
    :goto_4
    const/16 v0, 0xa

    if-ge v4, v0, :cond_5a

    .line 107
    :try_start_8
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 110
    const-string v3, "GET"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 112
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 114
    const/16 v3, 0x7530

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 115
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 116
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 117
    const/16 v3, 0x12e

    if-ne v5, v3, :cond_92

    .line 118
    const-string v1, "Location"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 120
    invoke-static {v3}, Lcom/anythink/myoffer/a/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_40

    const-string v1, ".apk"

    invoke-virtual {v3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 121
    :cond_40
    const/4 v1, 0x1

    .line 127
    :goto_41
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 129
    if-nez v1, :cond_4a

    const/16 v0, 0xc8

    if-ne v5, v0, :cond_7a

    .line 130
    :cond_4a
    iget-boolean v0, p0, Lcom/anythink/myoffer/a/d$1;->b:Z

    if-eqz v0, :cond_55

    .line 131
    iget-object v0, p0, Lcom/anythink/myoffer/a/d$1;->d:Lcom/anythink/myoffer/a/d;

    iget-object v1, p0, Lcom/anythink/myoffer/a/d$1;->c:Lcom/anythink/myoffer/a/d$a;

    invoke-static {v0, v3, v1}, Lcom/anythink/myoffer/a/d;->a(Lcom/anythink/myoffer/a/d;Ljava/lang/String;Lcom/anythink/myoffer/a/d$a;)V

    .line 133
    :cond_55
    iget-object v0, p0, Lcom/anythink/myoffer/a/d$1;->d:Lcom/anythink/myoffer/a/d;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/anythink/myoffer/a/d;->g:Z
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_5a} :catch_8d

    .line 148
    :cond_5a
    :goto_5a
    iget-object v0, p0, Lcom/anythink/myoffer/a/d$1;->d:Lcom/anythink/myoffer/a/d;

    iget-boolean v0, v0, Lcom/anythink/myoffer/a/d;->g:Z

    if-eqz v0, :cond_71

    .line 150
    iget-boolean v0, p0, Lcom/anythink/myoffer/a/d$1;->b:Z

    if-eqz v0, :cond_6d

    .line 151
    iget-object v0, p0, Lcom/anythink/myoffer/a/d$1;->d:Lcom/anythink/myoffer/a/d;

    const-string v1, ""

    iget-object v3, p0, Lcom/anythink/myoffer/a/d$1;->c:Lcom/anythink/myoffer/a/d$a;

    invoke-static {v0, v1, v3}, Lcom/anythink/myoffer/a/d;->a(Lcom/anythink/myoffer/a/d;Ljava/lang/String;Lcom/anythink/myoffer/a/d$a;)V

    .line 153
    :cond_6d
    iget-object v0, p0, Lcom/anythink/myoffer/a/d$1;->d:Lcom/anythink/myoffer/a/d;

    iput-boolean v2, v0, Lcom/anythink/myoffer/a/d;->g:Z

    .line 155
    :cond_71
    return-void

    .line 123
    :cond_72
    :try_start_72
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 105
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move-object v1, v3

    goto :goto_4

    .line 137
    :cond_7a
    iget-boolean v0, p0, Lcom/anythink/myoffer/a/d$1;->b:Z

    if-eqz v0, :cond_87

    .line 138
    iget-object v0, p0, Lcom/anythink/myoffer/a/d$1;->d:Lcom/anythink/myoffer/a/d;

    const-string v1, ""

    iget-object v3, p0, Lcom/anythink/myoffer/a/d$1;->c:Lcom/anythink/myoffer/a/d$a;

    invoke-static {v0, v1, v3}, Lcom/anythink/myoffer/a/d;->a(Lcom/anythink/myoffer/a/d;Ljava/lang/String;Lcom/anythink/myoffer/a/d$a;)V

    .line 140
    :cond_87
    iget-object v0, p0, Lcom/anythink/myoffer/a/d$1;->d:Lcom/anythink/myoffer/a/d;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/anythink/myoffer/a/d;->g:Z
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_8c} :catch_8d

    goto :goto_5a

    .line 143
    :catch_8d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5a

    :cond_92
    move-object v3, v1

    move v1, v2

    goto :goto_41
.end method
