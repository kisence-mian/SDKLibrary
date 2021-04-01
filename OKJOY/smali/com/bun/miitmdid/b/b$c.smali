.class Lcom/bun/miitmdid/b/b$c;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bun/miitmdid/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field private b:I
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field private c:Ljava/lang/Exception;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bun/miitmdid/b/b;Ljava/lang/String;Ljava/lang/Exception;I)V
    .registers 5
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bun/miitmdid/b/b$c;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/bun/miitmdid/b/b$c;->c:Ljava/lang/Exception;

    iput p4, p0, Lcom/bun/miitmdid/b/b$c;->b:I

    return-void
.end method

.method static native synthetic a(Lcom/bun/miitmdid/b/b$c;)Ljava/lang/Exception;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method static native synthetic b(Lcom/bun/miitmdid/b/b$c;)I
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method static native synthetic c(Lcom/bun/miitmdid/b/b$c;)Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method
