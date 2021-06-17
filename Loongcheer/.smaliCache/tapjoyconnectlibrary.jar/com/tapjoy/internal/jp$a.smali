.class public final Lcom/tapjoy/internal/jp$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/jp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/tapjoy/internal/jp;

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/tapjoy/internal/jp;Ljava/lang/String;)V
    .registers 3

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    iput-object p1, p0, Lcom/tapjoy/internal/jp$a;->a:Lcom/tapjoy/internal/jp;

    .line 352
    invoke-static {p2}, Lcom/tapjoy/internal/jr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/tapjoy/internal/jp$a;->b:Ljava/lang/String;

    .line 353
    return-void
.end method

.method public synthetic constructor <init>(Lcom/tapjoy/internal/jp;Ljava/lang/String;B)V
    .registers 4

    .line 346
    invoke-direct {p0, p1, p2}, Lcom/tapjoy/internal/jp$a;-><init>(Lcom/tapjoy/internal/jp;Ljava/lang/String;)V

    return-void
.end method
