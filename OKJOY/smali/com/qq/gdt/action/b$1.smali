.class final Lcom/qq/gdt/action/b$1;
.super Ljava/util/HashSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/gdt/action/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    const-string v0, "START_APP"

    invoke-virtual {p0, v0}, Lcom/qq/gdt/action/b$1;->add(Ljava/lang/Object;)Z

    const-string v0, "PAGE_VIEW"

    invoke-virtual {p0, v0}, Lcom/qq/gdt/action/b$1;->add(Ljava/lang/Object;)Z

    const-string v0, "REGISTER"

    invoke-virtual {p0, v0}, Lcom/qq/gdt/action/b$1;->add(Ljava/lang/Object;)Z

    const-string v0, "VIEW_CONTENT"

    invoke-virtual {p0, v0}, Lcom/qq/gdt/action/b$1;->add(Ljava/lang/Object;)Z

    const-string v0, "CONSULT"

    invoke-virtual {p0, v0}, Lcom/qq/gdt/action/b$1;->add(Ljava/lang/Object;)Z

    const-string v0, "ADD_TO_CART"

    invoke-virtual {p0, v0}, Lcom/qq/gdt/action/b$1;->add(Ljava/lang/Object;)Z

    const-string v0, "PURCHASE"

    invoke-virtual {p0, v0}, Lcom/qq/gdt/action/b$1;->add(Ljava/lang/Object;)Z

    const-string v0, "SEARCH"

    invoke-virtual {p0, v0}, Lcom/qq/gdt/action/b$1;->add(Ljava/lang/Object;)Z

    const-string v0, "ADD_TO_WISHLIST"

    invoke-virtual {p0, v0}, Lcom/qq/gdt/action/b$1;->add(Ljava/lang/Object;)Z

    const-string v0, "INITIATE_CHECKOUT"

    invoke-virtual {p0, v0}, Lcom/qq/gdt/action/b$1;->add(Ljava/lang/Object;)Z

    const-string v0, "COMPLETE_ORDER"

    invoke-virtual {p0, v0}, Lcom/qq/gdt/action/b$1;->add(Ljava/lang/Object;)Z

    const-string v0, "DOWNLOAD_APP"

    invoke-virtual {p0, v0}, Lcom/qq/gdt/action/b$1;->add(Ljava/lang/Object;)Z

    const-string v0, "RATE"

    invoke-virtual {p0, v0}, Lcom/qq/gdt/action/b$1;->add(Ljava/lang/Object;)Z

    const-string v0, "RESERVATION"

    invoke-virtual {p0, v0}, Lcom/qq/gdt/action/b$1;->add(Ljava/lang/Object;)Z

    const-string v0, "SHARE"

    invoke-virtual {p0, v0}, Lcom/qq/gdt/action/b$1;->add(Ljava/lang/Object;)Z

    const-string v0, "APPLY"

    invoke-virtual {p0, v0}, Lcom/qq/gdt/action/b$1;->add(Ljava/lang/Object;)Z

    const-string v0, "CLAIM_OFFER"

    invoke-virtual {p0, v0}, Lcom/qq/gdt/action/b$1;->add(Ljava/lang/Object;)Z

    const-string v0, "NAVIGATE"

    invoke-virtual {p0, v0}, Lcom/qq/gdt/action/b$1;->add(Ljava/lang/Object;)Z

    const-string v0, "PRODUCT_RECOMMEND"

    invoke-virtual {p0, v0}, Lcom/qq/gdt/action/b$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
