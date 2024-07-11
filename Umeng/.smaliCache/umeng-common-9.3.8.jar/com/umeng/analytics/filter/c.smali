.class public Lcom/umeng/analytics/filter/c;
.super Ljava/lang/Object;
.source "KeyFilter.java"

# interfaces
.implements Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;
.implements Lcom/umeng/commonsdk/statistics/internal/UMImprintPreProcessCallback;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImprintValueChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 21
    return-void
.end method

.method public onPreProcessImprintKey(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 15
    const/4 p1, 0x0

    return p1
.end method
