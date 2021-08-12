.class Lcom/sigmob/sdk/common/f/g$b;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/common/f/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/common/f/g;


# direct methods
.method private constructor <init>(Lcom/sigmob/sdk/common/f/g;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/f/g$b;->a:Lcom/sigmob/sdk/common/f/g;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sigmob/sdk/common/f/g;Lcom/sigmob/sdk/common/f/g$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/common/f/g$b;-><init>(Lcom/sigmob/sdk/common/f/g;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 3

    iget-object p1, p0, Lcom/sigmob/sdk/common/f/g$b;->a:Lcom/sigmob/sdk/common/f/g;

    invoke-static {p1}, Lcom/sigmob/sdk/common/f/g;->a(Lcom/sigmob/sdk/common/f/g;)V

    iget-object p1, p0, Lcom/sigmob/sdk/common/f/g$b;->a:Lcom/sigmob/sdk/common/f/g;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sigmob/sdk/common/f/g;->a(Lcom/sigmob/sdk/common/f/g;Z)Z

    const/4 p1, 0x0

    return-object p1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/common/f/g$b;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
