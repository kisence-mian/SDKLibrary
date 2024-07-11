.class Lcom/bun/miitmdid/b/b$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bun/miitmdid/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lcom/bun/miitmdid/b/b;Ljava/lang/String;Ljava/lang/Exception;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bun/miitmdid/b/b$c;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/bun/miitmdid/b/b$c;->c:Ljava/lang/Exception;

    iput p4, p0, Lcom/bun/miitmdid/b/b$c;->b:I

    return-void
.end method

.method static native synthetic a(Lcom/bun/miitmdid/b/b$c;)Ljava/lang/Exception;
.end method

.method static native synthetic b(Lcom/bun/miitmdid/b/b$c;)I
.end method

.method static native synthetic c(Lcom/bun/miitmdid/b/b$c;)Ljava/lang/String;
.end method
