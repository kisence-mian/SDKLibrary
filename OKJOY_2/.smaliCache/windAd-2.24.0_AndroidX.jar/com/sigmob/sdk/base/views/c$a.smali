.class public Lcom/sigmob/sdk/base/views/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/views/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Landroid/graphics/Paint$Style;

.field public static final b:I

.field public static final c:Landroid/graphics/Paint$Style;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    sput-object v0, Lcom/sigmob/sdk/base/views/c$a;->a:Landroid/graphics/Paint$Style;

    sget v0, Lcom/sigmob/sdk/base/views/c;->a:I

    sput v0, Lcom/sigmob/sdk/base/views/c$a;->b:I

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    sput-object v0, Lcom/sigmob/sdk/base/views/c$a;->c:Landroid/graphics/Paint$Style;

    return-void
.end method
