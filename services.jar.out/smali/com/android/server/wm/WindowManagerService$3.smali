.class Lcom/android/server/wm/WindowManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowManagerService;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1030
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1033
    const-string v7, "com.sec.android.extra.ARRAGE_MODE"

    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1034
    .local v3, mode:I
    const-string v7, "com.sec.android.extra.ARRAGE_TYPE"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1035
    .local v6, type:Ljava/lang/String;
    const-string v7, "InputMethod"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1036
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v7, v7, Lcom/android/server/wm/WindowManagerService;->mCurDisplayWidth:I

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v8, v8, Lcom/android/server/wm/WindowManagerService;->mCurDisplayHeight:I

    if-le v7, v8, :cond_1

    .line 1076
    :cond_0
    :goto_0
    return-void

    .line 1040
    :cond_1
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7, v10}, Lcom/android/server/wm/WindowManagerService;->findDesiredInputMethodWindowIndexLocked(Z)I

    move-result v0

    .line 1041
    .local v0, idx:I
    if-lez v0, :cond_2

    .line 1042
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    add-int/lit8 v8, v0, -0x1

    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v9, v9, Lcom/android/server/wm/WindowManagerService;->mWindowCountBetweenIMTargetAndTopWidget:I

    sub-int/2addr v8, v9

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 1043
    .local v1, imFocus:Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_2

    .line 1044
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getWindowModeLw()I

    move-result v7

    invoke-static {v7}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v7

    and-int/lit8 v7, v7, 0x6

    if-nez v7, :cond_0

    .line 1051
    .end local v0           #idx:I
    .end local v1           #imFocus:Lcom/android/server/wm/WindowState;
    :cond_2
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v7, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v8

    .line 1052
    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$504()I

    move-result v7

    rem-int/lit8 v7, v7, 0x2

    invoke-static {v7}, Lcom/android/server/wm/WindowManagerService;->access$502(I)I

    .line 1053
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$500()I

    move-result v7

    if-nez v7, :cond_3

    .line 1054
    or-int/lit16 v3, v3, 0x400

    .line 1059
    :goto_1
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput v3, v7, Lcom/android/server/wm/WindowManagerService;->mArrangeMode:I

    .line 1060
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1062
    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    const-string v8, "system"

    invoke-direct {v5, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1063
    .local v5, systemDir:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 1065
    const/4 v7, 0x2

    new-array v4, v7, [Ljava/lang/String;

    const-string v7, ""

    aput-object v7, v4, v10

    const-string v7, "EOF"

    aput-object v7, v4, v11

    .line 1066
    .local v4, str:[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v7, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v8

    .line 1067
    const/4 v7, 0x0

    :try_start_1
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v9, v9, Lcom/android/server/wm/WindowManagerService;->mArrangeMode:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v7

    .line 1068
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1069
    const-string v7, "arrangemode"

    invoke-static {v5, v7, v4}, Lcom/android/server/wm/WindowManagerService$MultiWindowDataStorage;->store(Ljava/io/File;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 1072
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    .line 1073
    .local v2, mgr:Landroid/app/IActivityManager;
    const/4 v7, 0x0

    invoke-interface {v2, v7}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1074
    .end local v2           #mgr:Landroid/app/IActivityManager;
    :catch_0
    move-exception v7

    goto :goto_0

    .line 1056
    .end local v4           #str:[Ljava/lang/String;
    .end local v5           #systemDir:Ljava/io/File;
    :cond_3
    and-int/lit16 v3, v3, -0x401

    goto :goto_1

    .line 1060
    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v7

    .line 1068
    .restart local v4       #str:[Ljava/lang/String;
    .restart local v5       #systemDir:Ljava/io/File;
    :catchall_1
    move-exception v7

    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v7
.end method
