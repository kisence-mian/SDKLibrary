.class final Lcom/ksad/download/e$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksad/download/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/ksad/download/e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ksad/download/e;

    invoke-direct {v0}, Lcom/ksad/download/e;-><init>()V

    sput-object v0, Lcom/ksad/download/e$a;->a:Lcom/ksad/download/e;

    return-void
.end method

.method static synthetic a()Lcom/ksad/download/e;
    .registers 1

    sget-object v0, Lcom/ksad/download/e$a;->a:Lcom/ksad/download/e;

    return-object v0
.end method
