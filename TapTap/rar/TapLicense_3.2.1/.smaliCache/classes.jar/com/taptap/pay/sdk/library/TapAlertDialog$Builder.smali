.class public Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;
.super Ljava/lang/Object;
.source "TapAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/pay/sdk/library/TapAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCanceledBackPress:Z

.field private mCanceledOnTouchOutside:Z

.field private mContext:Landroid/content/Context;

.field private mOnDialogClickListener:Lcom/taptap/pay/sdk/library/TapAlertDialog$OnDialogClickListener;

.field private mTapCNRes:Lcom/taptap/pay/sdk/library/TapIconTitle;

.field private mTapGlobalRes:Lcom/taptap/pay/sdk/library/TapIconTitle;

.field private mType:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    const/4 v0, -0x1

    iput v0, p0, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->mType:I

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->mCanceledOnTouchOutside:Z

    .line 181
    iput-boolean v0, p0, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->mCanceledBackPress:Z

    return-void
.end method

.method static synthetic access$000(Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;

    .line 173
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;

    .line 173
    iget v0, p0, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->mType:I

    return v0
.end method

.method static synthetic access$200(Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;)Lcom/taptap/pay/sdk/library/TapIconTitle;
    .registers 2
    .param p0, "x0"    # Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;

    .line 173
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->mTapCNRes:Lcom/taptap/pay/sdk/library/TapIconTitle;

    return-object v0
.end method

.method static synthetic access$300(Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;)Lcom/taptap/pay/sdk/library/TapIconTitle;
    .registers 2
    .param p0, "x0"    # Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;

    .line 173
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->mTapGlobalRes:Lcom/taptap/pay/sdk/library/TapIconTitle;

    return-object v0
.end method

.method static synthetic access$400(Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;)Z
    .registers 2
    .param p0, "x0"    # Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;

    .line 173
    iget-boolean v0, p0, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->mCanceledOnTouchOutside:Z

    return v0
.end method

.method static synthetic access$500(Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;)Z
    .registers 2
    .param p0, "x0"    # Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;

    .line 173
    iget-boolean v0, p0, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->mCanceledBackPress:Z

    return v0
.end method

.method static synthetic access$600(Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;)Lcom/taptap/pay/sdk/library/TapAlertDialog$OnDialogClickListener;
    .registers 2
    .param p0, "x0"    # Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;

    .line 173
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->mOnDialogClickListener:Lcom/taptap/pay/sdk/library/TapAlertDialog$OnDialogClickListener;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/taptap/pay/sdk/library/TapAlertDialog;
    .registers 2

    .line 225
    new-instance v0, Lcom/taptap/pay/sdk/library/TapAlertDialog;

    invoke-direct {v0, p0}, Lcom/taptap/pay/sdk/library/TapAlertDialog;-><init>(Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;)V

    return-object v0
.end method

.method public setCanceledBackPress(Z)Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;
    .registers 2
    .param p1, "cancel"    # Z

    .line 215
    iput-boolean p1, p0, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->mCanceledBackPress:Z

    .line 216
    return-object p0
.end method

.method public setCanceledOnTouchOutside(Z)Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;
    .registers 2
    .param p1, "cancel"    # Z

    .line 210
    iput-boolean p1, p0, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->mCanceledOnTouchOutside:Z

    .line 211
    return-object p0
.end method

.method public setContext(Landroid/content/Context;)Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;
    .registers 2
    .param p1, "cnt"    # Landroid/content/Context;

    .line 190
    iput-object p1, p0, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->mContext:Landroid/content/Context;

    .line 191
    return-object p0
.end method

.method public setOnAlertClickListener(Lcom/taptap/pay/sdk/library/TapAlertDialog$OnDialogClickListener;)Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;
    .registers 2
    .param p1, "l"    # Lcom/taptap/pay/sdk/library/TapAlertDialog$OnDialogClickListener;

    .line 220
    iput-object p1, p0, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->mOnDialogClickListener:Lcom/taptap/pay/sdk/library/TapAlertDialog$OnDialogClickListener;

    .line 221
    return-object p0
.end method

.method public setTapCNRes(Lcom/taptap/pay/sdk/library/TapIconTitle;)Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;
    .registers 2
    .param p1, "cn"    # Lcom/taptap/pay/sdk/library/TapIconTitle;

    .line 200
    iput-object p1, p0, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->mTapCNRes:Lcom/taptap/pay/sdk/library/TapIconTitle;

    .line 201
    return-object p0
.end method

.method public setTapGlobalRes(Lcom/taptap/pay/sdk/library/TapIconTitle;)Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;
    .registers 2
    .param p1, "global"    # Lcom/taptap/pay/sdk/library/TapIconTitle;

    .line 205
    iput-object p1, p0, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->mTapGlobalRes:Lcom/taptap/pay/sdk/library/TapIconTitle;

    .line 206
    return-object p0
.end method

.method public setType(I)Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;
    .registers 2
    .param p1, "type"    # I

    .line 195
    iput p1, p0, Lcom/taptap/pay/sdk/library/TapAlertDialog$Builder;->mType:I

    .line 196
    return-object p0
.end method
