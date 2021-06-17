.class public final Lcom/tapjoy/internal/hu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:Lcom/tapjoy/internal/bd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/bd<",
            "Lcom/tapjoy/internal/hu;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Landroid/graphics/Rect;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public final g:Lcom/tapjoy/internal/gn;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Lcom/tapjoy/internal/hu$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/hu$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/hu;->h:Lcom/tapjoy/internal/bd;

    return-void
.end method

.method constructor <init>(Landroid/graphics/Rect;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/gn;)V
    .registers 8

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/tapjoy/internal/hu;->a:Landroid/graphics/Rect;

    .line 25
    iput-object p2, p0, Lcom/tapjoy/internal/hu;->b:Ljava/lang/String;

    .line 26
    iput-boolean p3, p0, Lcom/tapjoy/internal/hu;->c:Z

    .line 27
    iput-object p4, p0, Lcom/tapjoy/internal/hu;->d:Ljava/lang/String;

    .line 28
    iput-object p5, p0, Lcom/tapjoy/internal/hu;->e:Ljava/lang/String;

    .line 29
    iput-object p6, p0, Lcom/tapjoy/internal/hu;->f:Ljava/lang/String;

    .line 30
    iput-object p7, p0, Lcom/tapjoy/internal/hu;->g:Lcom/tapjoy/internal/gn;

    .line 31
    return-void
.end method
