.class public final Lcom/bytedance/embedapplog/R$id;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/embedapplog/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "id"
.end annotation


# static fields
.field public static tag_ignore:I

.field public static tag_view_name:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 5
    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$id;->tag_ignore:I

    sput v0, Lcom/bytedance/embedapplog/R$id;->tag_ignore:I

    .line 6
    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$id;->tag_view_name:I

    sput v0, Lcom/bytedance/embedapplog/R$id;->tag_view_name:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
