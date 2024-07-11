.class Lcom/umeng/analytics/vshelper/PageNameMonitor$a;
.super Ljava/lang/Object;
.source "PageNameMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/vshelper/PageNameMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/umeng/analytics/vshelper/PageNameMonitor;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 14
    new-instance v0, Lcom/umeng/analytics/vshelper/PageNameMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/umeng/analytics/vshelper/PageNameMonitor;-><init>(Lcom/umeng/analytics/vshelper/PageNameMonitor$1;)V

    sput-object v0, Lcom/umeng/analytics/vshelper/PageNameMonitor$a;->a:Lcom/umeng/analytics/vshelper/PageNameMonitor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/umeng/analytics/vshelper/PageNameMonitor;
    .registers 1

    .line 13
    sget-object v0, Lcom/umeng/analytics/vshelper/PageNameMonitor$a;->a:Lcom/umeng/analytics/vshelper/PageNameMonitor;

    return-object v0
.end method
