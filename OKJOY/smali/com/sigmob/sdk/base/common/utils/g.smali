.class Lcom/sigmob/sdk/base/common/utils/g;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Ljava/io/File;

.field private final c:Lcom/sigmob/sdk/base/common/utils/h;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/io/File;Lcom/sigmob/sdk/base/common/utils/h;)V
    .registers 4

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/utils/g;->a:Ljava/io/File;

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/utils/g;->b:Ljava/io/File;

    iput-object p3, p0, Lcom/sigmob/sdk/base/common/utils/g;->c:Lcom/sigmob/sdk/base/common/utils/h;

    return-void
.end method


# virtual methods
.method protected a([Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/g;->a:Ljava/io/File;

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/utils/g;->b:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/common/utils/f;->a(Ljava/io/File;Ljava/io/File;)Ljava/util/List;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v0

    :goto_c
    return-object v0

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_c
.end method

.method protected a(Ljava/lang/Boolean;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/g;->c:Lcom/sigmob/sdk/base/common/utils/h;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/g;->c:Lcom/sigmob/sdk/base/common/utils/h;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/base/common/utils/h;->a(Z)V

    :cond_d
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/common/utils/g;->a([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/common/utils/g;->a(Ljava/lang/Boolean;)V

    return-void
.end method
