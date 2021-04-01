.class Lcom/sigmob/sdk/base/common/utils/k;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/common/utils/i;


# direct methods
.method private constructor <init>(Lcom/sigmob/sdk/base/common/utils/i;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/utils/k;->a:Lcom/sigmob/sdk/base/common/utils/i;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sigmob/sdk/base/common/utils/i;Lcom/sigmob/sdk/base/common/utils/i$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/common/utils/k;-><init>(Lcom/sigmob/sdk/base/common/utils/i;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/k;->a:Lcom/sigmob/sdk/base/common/utils/i;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/utils/i;->a(Lcom/sigmob/sdk/base/common/utils/i;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/utils/k;->a:Lcom/sigmob/sdk/base/common/utils/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sigmob/sdk/base/common/utils/i;->a(Lcom/sigmob/sdk/base/common/utils/i;Z)Z

    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/common/utils/k;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
