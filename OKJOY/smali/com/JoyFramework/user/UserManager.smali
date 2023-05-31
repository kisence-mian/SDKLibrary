.class public Lcom/JoyFramework/user/UserManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static _instance:Lcom/JoyFramework/user/UserManager;


# instance fields
.field private mUser:Lcom/JoyFramework/user/User;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/JoyFramework/user/UserManager;->_instance:Lcom/JoyFramework/user/UserManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/JoyFramework/user/UserManager;->mUser:Lcom/JoyFramework/user/User;

    .line 21
    return-void
.end method

.method public static getInstance()Lcom/JoyFramework/user/UserManager;
    .registers 2

    .prologue
    .line 30
    sget-object v0, Lcom/JoyFramework/user/UserManager;->_instance:Lcom/JoyFramework/user/UserManager;

    if-nez v0, :cond_13

    .line 31
    const-class v1, Lcom/JoyFramework/user/UserManager;

    monitor-enter v1

    .line 32
    :try_start_7
    sget-object v0, Lcom/JoyFramework/user/UserManager;->_instance:Lcom/JoyFramework/user/UserManager;

    if-nez v0, :cond_12

    .line 33
    new-instance v0, Lcom/JoyFramework/user/UserManager;

    invoke-direct {v0}, Lcom/JoyFramework/user/UserManager;-><init>()V

    sput-object v0, Lcom/JoyFramework/user/UserManager;->_instance:Lcom/JoyFramework/user/UserManager;

    .line 35
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 37
    :cond_13
    sget-object v0, Lcom/JoyFramework/user/UserManager;->_instance:Lcom/JoyFramework/user/UserManager;

    return-object v0

    .line 35
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public cleanUser()V
    .registers 2

    .prologue
    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/JoyFramework/user/UserManager;->mUser:Lcom/JoyFramework/user/User;

    .line 82
    return-void
.end method

.method public getUser()Lcom/JoyFramework/user/User;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/JoyFramework/user/UserManager;->mUser:Lcom/JoyFramework/user/User;

    if-eqz v0, :cond_7

    .line 87
    iget-object v0, p0, Lcom/JoyFramework/user/UserManager;->mUser:Lcom/JoyFramework/user/User;

    .line 90
    :goto_6
    return-object v0

    .line 89
    :cond_7
    new-instance v0, Lcom/JoyFramework/user/User;

    invoke-direct {v0}, Lcom/JoyFramework/user/User;-><init>()V

    iput-object v0, p0, Lcom/JoyFramework/user/UserManager;->mUser:Lcom/JoyFramework/user/User;

    .line 90
    iget-object v0, p0, Lcom/JoyFramework/user/UserManager;->mUser:Lcom/JoyFramework/user/User;

    goto :goto_6
.end method

.method public isLogin()Z
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/JoyFramework/user/UserManager;->mUser:Lcom/JoyFramework/user/User;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/JoyFramework/user/UserManager;->mUser:Lcom/JoyFramework/user/User;

    invoke-virtual {v0}, Lcom/JoyFramework/user/User;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public readUser()Lcom/JoyFramework/user/User;
    .registers 6

    .prologue
    .line 98
    new-instance v0, Lcom/JoyFramework/user/UserInfo;

    invoke-direct {v0}, Lcom/JoyFramework/user/UserInfo;-><init>()V

    .line 99
    invoke-virtual {v0}, Lcom/JoyFramework/user/UserInfo;->isFile()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 100
    invoke-virtual {v0}, Lcom/JoyFramework/user/UserInfo;->readUserInfo()Ljava/lang/String;

    move-result-object v0

    .line 101
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 102
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 103
    array-length v0, v1

    const/4 v2, 0x3

    if-lt v0, v2, :cond_30

    .line 104
    new-instance v0, Lcom/JoyFramework/user/User;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v3, 0x1

    aget-object v3, v1, v3

    const/4 v4, 0x2

    aget-object v1, v1, v4

    invoke-direct {v0, v2, v3, v1}, Lcom/JoyFramework/user/User;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :goto_2f
    return-object v0

    :cond_30
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method public saveUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 59
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 75
    :cond_c
    :goto_c
    return-void

    .line 62
    :cond_d
    iget-object v0, p0, Lcom/JoyFramework/user/UserManager;->mUser:Lcom/JoyFramework/user/User;

    if-nez v0, :cond_18

    .line 63
    new-instance v0, Lcom/JoyFramework/user/User;

    invoke-direct {v0}, Lcom/JoyFramework/user/User;-><init>()V

    iput-object v0, p0, Lcom/JoyFramework/user/UserManager;->mUser:Lcom/JoyFramework/user/User;

    .line 65
    :cond_18
    iget-object v0, p0, Lcom/JoyFramework/user/UserManager;->mUser:Lcom/JoyFramework/user/User;

    invoke-virtual {v0, p1}, Lcom/JoyFramework/user/User;->setUserName(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/JoyFramework/user/UserManager;->mUser:Lcom/JoyFramework/user/User;

    invoke-virtual {v0, p3}, Lcom/JoyFramework/user/User;->setUid(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/JoyFramework/user/UserManager;->mUser:Lcom/JoyFramework/user/User;

    invoke-virtual {v0, p2}, Lcom/JoyFramework/user/User;->setPwd(Ljava/lang/String;)V

    .line 68
    if-eqz p3, :cond_c

    .line 69
    iget-object v0, p0, Lcom/JoyFramework/user/UserManager;->mUser:Lcom/JoyFramework/user/User;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/JoyFramework/user/User;->setLogin(Z)V

    .line 72
    new-instance v0, Lcom/JoyFramework/user/UserInfo;

    invoke-direct {v0}, Lcom/JoyFramework/user/UserInfo;-><init>()V

    .line 73
    iget-object v1, p0, Lcom/JoyFramework/user/UserManager;->mUser:Lcom/JoyFramework/user/User;

    invoke-virtual {v0, v1}, Lcom/JoyFramework/user/UserInfo;->saveUserInfo(Lcom/JoyFramework/user/User;)V

    goto :goto_c
.end method
