.class Lcom/bun/miitmdid/b/b$a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bun/miitmdid/b/b;->a()Lcom/bun/miitmdid/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/bun/miitmdid/b/b$c;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/bun/miitmdid/b/b;

.field final synthetic b:Lcom/bun/miitmdid/b/b;


# direct methods
.method constructor <init>(Lcom/bun/miitmdid/b/b;)V
    .registers 2

    iput-object p1, p0, Lcom/bun/miitmdid/b/b$a;->b:Lcom/bun/miitmdid/b/b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/bun/miitmdid/b/b$a;->a:Lcom/bun/miitmdid/b/b;

    return-void
.end method


# virtual methods
.method protected varargs native a([Ljava/lang/Void;)Lcom/bun/miitmdid/b/b$c;
.end method

.method protected native a(Lcom/bun/miitmdid/b/b$c;)V
.end method

.method protected bridge native synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method protected bridge native synthetic onPostExecute(Ljava/lang/Object;)V
.end method
