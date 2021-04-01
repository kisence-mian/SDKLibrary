.class final Lcom/ksad/download/d$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksad/download/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/ksad/download/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ksad/download/d;

    invoke-direct {v0}, Lcom/ksad/download/d;-><init>()V

    sput-object v0, Lcom/ksad/download/d$a;->a:Lcom/ksad/download/d;

    return-void
.end method

.method static synthetic a()Lcom/ksad/download/d;
    .registers 1

    sget-object v0, Lcom/ksad/download/d$a;->a:Lcom/ksad/download/d;

    return-object v0
.end method
