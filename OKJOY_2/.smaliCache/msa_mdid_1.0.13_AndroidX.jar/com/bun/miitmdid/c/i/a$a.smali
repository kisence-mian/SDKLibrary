.class Lcom/bun/miitmdid/c/i/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bun/miitmdid/c/i/a;->a(Lcom/bun/supplier/SupplierListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bun/supplier/SupplierListener;

.field final synthetic b:Lcom/bun/miitmdid/c/i/a;


# direct methods
.method constructor <init>(Lcom/bun/miitmdid/c/i/a;Lcom/bun/supplier/SupplierListener;)V
    .registers 3

    iput-object p1, p0, Lcom/bun/miitmdid/c/i/a$a;->b:Lcom/bun/miitmdid/c/i/a;

    iput-object p2, p0, Lcom/bun/miitmdid/c/i/a$a;->a:Lcom/bun/supplier/SupplierListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native run()V
.end method
