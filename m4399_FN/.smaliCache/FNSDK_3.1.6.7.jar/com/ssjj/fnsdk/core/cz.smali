.class Lcom/ssjj/fnsdk/core/cz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager$a;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/cz;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/cz;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/cz;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/cz;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->m(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 11

    if-eqz p1, :cond_186

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v0

    if-lez v0, :cond_186

    const-string v0, "versionName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "downloadUrl"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "forceUpdate"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "updateDesc"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, ""

    if-nez v0, :cond_26

    move-object v0, v3

    goto :goto_2a

    :cond_26
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_2a
    if-nez v1, :cond_2e

    move-object v1, v3

    goto :goto_32

    :cond_2e
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :goto_32
    if-nez v2, :cond_36

    move-object v2, v3

    goto :goto_3a

    :cond_36
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :goto_3a
    if-nez p1, :cond_3e

    move-object p1, v3

    goto :goto_42

    :cond_3e
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_42
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "fnsdk: Update Msg\uff1a\nver: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nurl: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\ndesc: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nforce: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "fnsdk"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "null"

    if-eqz p1, :cond_8e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_8e

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8e

    iget-object v5, p0, Lcom/ssjj/fnsdk/core/cz;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {v5, p1}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/ssjj/fnsdk/core/cz;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {v5, p1}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->b(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;Ljava/lang/String;)V

    :cond_8e
    const/16 p1, 0xa

    if-eqz v0, :cond_17c

    const-string v5, "0.0.0.0"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17c

    const-string v5, "0.0.0"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17c

    const-string v5, "0.0"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17c

    const-string v5, "0"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_17c

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17c

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c0

    goto/16 :goto_17c

    :cond_c0
    if-eqz v1, :cond_17c

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_17c

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d4

    goto/16 :goto_17c

    :cond_d4
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/cz;->b:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ".apk.temp"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->a(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->b(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->c(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_159

    if-eqz v0, :cond_172

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/cz;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/cz;->c:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_172

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cz;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {p1, v1}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->c(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cz;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->m(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x3

    goto :goto_18e

    :cond_159
    if-eqz v0, :cond_172

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/cz;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/cz;->c:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_172

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cz;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {p1, v1}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->c(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cz;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->m(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x4

    goto :goto_18e

    :cond_172
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/cz;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->m(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_191

    :cond_17c
    :goto_17c
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/cz;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->m(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_186
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cz;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->m(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0xe

    :goto_18e
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_191
    return-void
.end method
