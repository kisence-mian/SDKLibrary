.class public Lcom/bun/miitmdid/supplier/msa/a;
.super Landroid/os/AsyncTask;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/bun/lib/c;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field public b:Lcom/bun/miitmdid/c/e/a;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bun/lib/c;Lcom/bun/miitmdid/c/e/a;)V
    .registers 3
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/bun/miitmdid/supplier/msa/a;->a:Lcom/bun/lib/c;

    iput-object p2, p0, Lcom/bun/miitmdid/supplier/msa/a;->b:Lcom/bun/miitmdid/c/e/a;

    return-void
.end method


# virtual methods
.method protected varargs native a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method protected native a(Ljava/lang/Boolean;)V
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method protected bridge native synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method protected bridge native synthetic onPostExecute(Ljava/lang/Object;)V
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method
